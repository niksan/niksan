require 'bundler/capistrano'
load 'deploy/assets'

ssh_options[:forward_agent] = true

set :keep_releases, 3
set :application,     'niksan'
set :deploy_server,   "54.208.224.22"
set :bundle_without,  [:development, :test]
set :user,            "root"
set :login,           "niksan"
set :use_sudo,        false
set :deploy_to,       "/srv/htdocs/#{application}"
set :unicorn_conf,    "#{deploy_to}/current/config/unicorn.rb"
set :unicorn_pid,     "#{deploy_to}/shared/pids/unicorn.pid"
set :bundle_dir,      File.join(fetch(:shared_path), 'gems')
role :web,            deploy_server
role :app,            deploy_server
role :db,             deploy_server, primary: true
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.0.0-p247'
set :rake,            "bundle exec rake" 
set :bundle_cmd,      "do bundle"
set :scm,             :git
set :repository,      'git://github.com/niksan/niksan.git'

before 'deploy:assets:precompile', :remove_paths, :set_links
after 'deploy:update_code', :do_migrations

task :remove_paths, roles => :app do
  run "rm -rf #{release_path}/tmp"
end

task :set_links, roles => :app do
  links = {
    '/ckeditor_assets' => '/public/ckeditor_assets',
    '/system' => '/public/system',
    '/uploads' => '/public/uploads',
    '/config/database.yml' => '/config/database.yml'
  }
  links.each do |from, destination|
    run "rm -rf #{release_path}#{destination}"
    run "ln -s #{shared_path}#{from} #{release_path}#{destination}"
  end
end

task :do_migrations, roles => :app do
  run "cd #{deploy_to}/current; bundle exec rake RAILS_ENV=production db:migrate"
end

before 'deploy:finalize_update', 'set_current_release'
task :set_current_release, roles: :app do
    set :current_release, latest_release
end

  set :unicorn_start_cmd, "(cd #{deploy_to}/current; bundle exec unicorn_rails -Dc #{unicorn_conf} -E production)"

namespace :deploy do
  desc 'Start application'
  task :start, roles: :app do
    run unicorn_start_cmd
  end

  desc 'Stop application'
  task :stop, roles: :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc 'Restart Application'
  task :restart, roles: :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_start_cmd}"
  end
end
