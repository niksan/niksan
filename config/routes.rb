Niksan2::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'main#index'
  resources :main, :articles, :sites, :contacts, :portfolio

  resources :blog do
    resources :posts
  end

end
