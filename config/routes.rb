Niksan2::Application.routes.draw do

  root :to => 'main#index'
  resources :main, :articles, :sites, :contacts, :portfolio

  resources :blog do
    resources :posts
  end

end
