Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  devise_for :users
  resources :users
  resources :billings
  root 'welcome#index'
end
