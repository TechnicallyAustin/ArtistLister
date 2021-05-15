Rails.application.routes.draw do
  #Private Routes 
  
  #User Playlist Routes
  resources :users do 
    resources :playlists, :artists, :songs 
  end
  
  # Playlist Songs routes
  resources :playlists do
    resources :songs, only: [:new, :create, :edit, :index, :show]
  end
  
  # Artist Song routes
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  
  # Public Routes 
  resources :songs
  resources :playlists
  resources :users 
  
  # Session Routes
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'

  # Redirects 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/', to: 'sessions#welcome'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'logout', to: 'sessions#destroy'
  post 'logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create'

end
