Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :songs, only: [:index, :show, :new, :create, :edit ]
  end
  resources :songs
  resources :playlists
  resources :users, only: [:index, :new, :show, :create, :edit, :delete] 
end
