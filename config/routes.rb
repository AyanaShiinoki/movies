Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  root 'home/top'
  get '/about' => 'home#about'
  devise_for :users
  resources :movies, only: [:new, :create, :index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
