Rails.application.routes.draw do
  root 'posts#index'
  resources :users
  resources :posts
  resources :comments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
