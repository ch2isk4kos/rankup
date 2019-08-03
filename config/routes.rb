Rails.application.routes.draw do

    root 'welcomes#home' # get '/', to: 'welcomes#home'

    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'

    resources :teams
    resources :players
    resources :rankings
    resources :categories
    resources :sports
    resources :users

end
