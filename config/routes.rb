Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :rentals, except: [:new, :create]
  resources :statues do
    resources :reviews
    resources :rentals, only: [:new, :create]
  end
end
