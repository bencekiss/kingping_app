Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'players#home'
  resources :players
  resources :games
  resources :game_players
end
