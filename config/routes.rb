Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  root to: 'users#show'
  resources :entries
  get 'landing/home', as: 'welcome'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
