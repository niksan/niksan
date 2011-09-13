Niksan2::Application.routes.draw do

  root :to => 'main#index'
  resources :main, :articles, :sites, :contacts

  resources :blog do
    resources :posts
  end

end
