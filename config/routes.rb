Rails.application.routes.draw do

    root 'welcomes#home' # get '/', to: 'welcomes#home'

    resources :teams
    resources :players
    resources :rankings
    resources :categories
    resources :sports
    resources :users

end
