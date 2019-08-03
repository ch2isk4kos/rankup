Rails.application.routes.draw do

  resources :players
  resources :rankings
  resources :categories
  resources :sports
  resources :users
end
