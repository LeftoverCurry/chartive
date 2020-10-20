# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'landing#home'
  devise_for :users
  get '/dashboard' => 'entries#index', :as => :user_root

  resources :entries
end
