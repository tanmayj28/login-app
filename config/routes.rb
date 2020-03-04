# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :sessions, only: [:new, :create, :login, :welcome]
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  get 'welcome', to: 'sessions#welcome'
  post 'login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
