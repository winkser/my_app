Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'

  get 'pages/index'
  get 'pages/task_1'
  get 'pages/task_2'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
