Rails.application.routes.draw do

  # - - - </> [API] </> - - - #
  namespace :api do

    # - - - </> [ROUTE] </> - - - #
    resources :users

    # - - - </> [ROUTE] </> - - - #
    post '/signup', to: 'users#create'

    # - - - </> [ROUTE] </> - - - #
    resources :places

    # - - - </> [ROUTE] </> - - - #
    resources :events

    # - - - </> [ROUTE] </> - - - #
    resources :photos

    # - - - </> [ROUTE] </> - - - #
    resources :reviews

    # - - - </> [ROUTE] </> - - - #
    resources :categories

    # - - - </> [ROUTE] </> - - - #
    resources :user_tours

    # - - - </> [ROUTE] </> - - - #
    delete '/delete_tour', to: 'user_tours#delete_tour'

    # - - - </> [ROUTE] </> - - - #
    resources :place_locations

    # - - - </> [ROUTE] </> - - - #
    resources :event_locations

    # - - - </> [ROUTE] </> - - - #
    resources :place_categories

    # - - - </> [ROUTE] </> - - - #
    resources :event_categories

  end

  # - - - </> [AUTH] </> - - - #
  namespace :auth do

    # - - - </> [ROUTE] </> - - - #
    post '/login', to: 'authentication#login'

    # - - - </> [ROUTE] </> - - - #
    delete '/logout', to: 'authentication#logout'

  end
  
  # - - - </> [ROUTE] </> - - - #
  get '/*a', to: 'application#not_found'

end
