Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :messages, only: [:index, :new, :create]

  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
