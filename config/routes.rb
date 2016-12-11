Rails.application.routes.draw do

  # get 'image/index'
  resources :images

  root 'images#index'
end
