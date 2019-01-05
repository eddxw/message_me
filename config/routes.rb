Rails.application.routes.draw do
  resources :users
  get 'sessions/new'
  get 'login', to: 'sessions#new'
  get 'chatroom/index'
  root 'chatroom#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
