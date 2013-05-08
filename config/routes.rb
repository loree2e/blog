Blog::Application.routes.draw do
  get "comment/index"

  get "image/index"

  resources :authors


  resources :posts
  root :to => 'posts#index'
end