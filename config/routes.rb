# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sessions#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sessions, only: :create
  namespace :users do 
    scope ":user_id" do
      resources :searches, only: %i[new create]
    end
  end
end
