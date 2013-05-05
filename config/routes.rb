Blog::Application.routes.draw do
  resources :authors


  resources :posts
  root :to => 'posts#index'
end