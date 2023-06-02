Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: [:create]
  end
  resources :pokemons, only: :destroy

  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: :create
  end
end
