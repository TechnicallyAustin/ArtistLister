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
  resources :users, only: [:new, :create, :edit, :update] 
  get 'login', to: 'session#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
end
