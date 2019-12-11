Rails.application.routes.draw do
  root 'home/top'
  get 'home/about'
  devise_for :users
  resources :movies, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
