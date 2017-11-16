Rails.application.routes.draw do

  devise_for :users
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  root 'dashboard#index'

  resources :clients
  resources :invoices
  resources :activities



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
