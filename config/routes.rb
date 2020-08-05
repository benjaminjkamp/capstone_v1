Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    #user routes
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/me" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #team routes
      #no api routes needed

    #match routes
      #no index needed
    post "/matches" => "matches#create"
    get "/matches/:id" => "matches#show"
    patch "/matches/:id" => "matches#update"
    delete "/matches/:id" => "matches#destroy"

    #course routes
      #no destroy needed
    get "/courses" => "courses#index"
    post "/courses" => "courses#create"
    get "/courses/:id" => "courses#show"
    patch "/courses/:id" => "courses#update"

    #round routes
    get "/rounds" => "rounds#index"
    post "/rounds" => "rounds#create"
    get "/rounds/:id" => "rounds#show"
    patch "/rounds/:id" => "rounds#update"
    delete "/rounds/:id" => "rounds#destroy"

    #score routes
    patch "/scores/:id" => "scores#update"

    #tournament routes
    get "/tournaments" => "tournaments#index"
    post "/tournaments" => "tournaments#create"
    get "/tournaments/:id" => "tournaments#show"
    patch "/tournaments/:id" => "tournaments#update"

    #session routes
    post "/sessions" => "sessions#create"

  end

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }

end
