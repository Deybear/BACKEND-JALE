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
    resources :categories

    # - - - </> [ROUTE] </> - - - #
    resources :place_locations

    # - - - </> [ROUTE] </> - - - #
    resources :event_locations
    
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
