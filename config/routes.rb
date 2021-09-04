Rails.application.routes.draw do
  resources :productos
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :proveedores
  resources :clientes
  resources :tipo_clientes
  root to: "home#index"
end
