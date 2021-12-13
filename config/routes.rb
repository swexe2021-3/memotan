Rails.application.routes.draw do
  resources :users
  resources :words
  resources :weakwords
  resources :comments
  resources :purposes
  get 'comments/index/:id', to: 'comments#index', as: :comments_index
  get 'comments/new/:id', to: 'comments#new', as: :comments_new
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  root 'top#main'
  
  get 'quiz/start/:purpose_id', to: 'quiz#start', as: :quiz_start
  post 'quiz/correct', to: 'quiz#correct', as: :quiz_correct
  get 'quiz/next_quiz', to: 'quiz#next_quiz', as: :quiz_next
  
  #root 'words#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
