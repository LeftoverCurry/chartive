Rails.application.routes.draw do
  root to: 'landing#home'
  get 'landing/home', as: 'welcome'
  devise_for :users, path: 'front_desk'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
