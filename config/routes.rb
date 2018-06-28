Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}

  root 'home#home'

  resources :recipients, only: [:index, :new, :create]
end
