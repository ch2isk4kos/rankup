Rails.application.routes.draw do

    root 'welcome#home' # get '/', to: 'welcome#home'

    resources :teams
    resources :players
    resources :rankings
    resources :categories
    resources :sports
    resources :users

end
