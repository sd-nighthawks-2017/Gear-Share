Rails.application.routes.draw do
  devise_for :users
  root to: "sessions#home"

  resources :users

  resources :items do
    resources :reservations
  end
end
