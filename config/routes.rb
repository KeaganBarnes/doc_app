Rails.application.routes.draw do
  root 'doctors#index'
  devise_for :users

  resources :doctors do
    resources :appointments
  end
end
