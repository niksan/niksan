Niksan2::Application.routes.draw do

  root :to => 'main#index'
  resources :main, :articles, :sites, :contacts, :posts

  resources :blog do
    resources :posts
  end

end
