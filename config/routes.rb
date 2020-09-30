Rails.application.routes.draw do
  devise_for :users
  root to: 'landing#home'
  get 'landing/home', as: 'welcome'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
