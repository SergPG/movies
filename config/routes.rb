Rails.application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)
  
  root to: 'movies#index'
  resources :movies, only: [:index, :show]

end
