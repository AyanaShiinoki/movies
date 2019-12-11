Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  get 'users/index'
  root 'home#top'
  get '/about' => 'home#about'

  resources :movies, only: [:new, :create, :index, :show]
  resources :users, only: [:show, :index, :edit, :update]

end
