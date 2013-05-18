Blog::Application.routes.draw do
  devise_for :authors

  get "comment/index"

  get "image/index"

  resources :authors
  resources :posts
  root :to => 'posts#index'
end