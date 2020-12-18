Rails.application.routes.draw do
  resources :playlist_songs
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :songs, only: [:index, :show, :new, :create, :edit ]
  end
  resources :songs
  resources :playlists
  resources :users 


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#login'
  get '/', to: 'sessions#welcome'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get '/auth/facebook/callback', to: 'sessions#create'

end
