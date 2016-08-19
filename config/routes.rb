Rails.application.routes.draw do
  resources :artists do
    resources :artists, only: [:index, :show]
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs
end
