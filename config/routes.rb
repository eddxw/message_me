Rails.application.routes.draw do
  resources :messages
  resources :users
  get 'sessions/new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'chatroom/index'
  root 'chatroom#index'

  mount ActionCable.server, at: '/cable'
  #post 'message', to: 'messages#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
