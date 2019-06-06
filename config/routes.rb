Rails.application.routes.draw do
  resources :playlists do
    post 'songs', to: 'songs#create'
  end
  resources :users
  delete 'songs/:id', to: 'songs#destroy', as: 'destroy_song'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
