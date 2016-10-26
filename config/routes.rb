Rails.application.routes.draw do
  root 'apex#index'

  resources :contacts, only: [:create]
end
