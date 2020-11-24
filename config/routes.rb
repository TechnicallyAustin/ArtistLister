Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artist do 
    resources :songs, only: [:show, :index, :new, :edit]
  end

  resources :songs
  resources :playlist
  
end
