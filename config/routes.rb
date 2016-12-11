Rails.application.routes.draw do


  devise_for :users
  # get 'image/index'
  resources :images

  root to: 'images#index'
end
