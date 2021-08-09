Rails.application.routes.draw do
  root to: 'users#new'
  # root to: 'session#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get 'users/:id', to: 'users#show', as 'user'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/main' => 'mains#index'
end