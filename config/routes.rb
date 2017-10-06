Rails.application.routes.draw do
  resources :profiles

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  resources :tasks

  root to: "sessions#home"

  resources :users do
    resources :reviews
  end

  resources :items do
    resources :reservations do
      resource :dialogs, shallow: true
    end
  end

resources :tasks, only: [:index, :new, :create, :destroy]

end
