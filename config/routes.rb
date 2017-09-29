Rails.application.routes.draw do

  resources :items

  devise_for :users
  root to: "sessions#home"

  resources :users

end
