# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)

  root to: 'movies#index'
  resources :movies, only: %i[index show] do
    get 'page/:page', action: :index, on: :collection
    resources :ratings, only: :create
  end
end
