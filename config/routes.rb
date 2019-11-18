Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :rentals, except: [:new, :create]
  resources :statues do
    resources :reviews
    resources :rentals, only: [:new, :create]
  end
end
