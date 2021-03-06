# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sessions#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sessions, only: :create
  resources :articles, only: :index
  namespace :users do
    resources :registrations, only: %i[new create]
    scope ':user_id' do
      resources :searches, only: %i[new create]
    end
  end
end
