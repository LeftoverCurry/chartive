# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :user do
    root to: 'users#dashboard', as: 'dashboard'
  end
  root to: 'landing#home'

  resources :entries
  get 'landing/home', as: 'welcome'
end
