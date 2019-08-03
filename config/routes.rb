Rails.application.routes.draw do

    root 'welcomes#home' # get '/', to: 'welcomes#home'

    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'

    delete 'logout', to: 'sessions#destroy'

    resources :users, except: [:index]
    resources :sports, except: [:edit, :update, :destroy]
    resources :categories
    resources :rankings
    resources :players, except: [:edit, :update, :destroy]
    resources :teams, except: [:edit, :update, :destroy]





end
