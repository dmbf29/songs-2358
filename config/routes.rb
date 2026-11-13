Rails.application.routes.draw do
  root to: "pages#home"

  get "/search", to: "songs#search"
  get "/songs/named/:name", to: "songs#search_two"

  # http_verb '/path', to: 'controller#action', as: :prefix
  # get '/songs', to: 'songs#index', as: :songs
  # post '/songs', to: 'songs#create'
  # get '/songs/new', to: 'songs#new', as: :new_song
  # get '/songs/:id', to: 'songs#show', as: :song
  # delete '/songs/:id', to: 'songs#destroy'
  # patch '/songs/:id', to: 'songs#update'
  # get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  resources :songs do
    resources :reviews, only: [:new, :create]
  end
end
