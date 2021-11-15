Rails.application.routes.draw do
  resources :users
  resources :words
  resources :weakwords
  resources :comments
  root 'words#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
