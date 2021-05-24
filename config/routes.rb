Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  
  # get '/api/v1/users', to: 'api/v1/users#index'
  # post '/api/v1/users', to: 'api/v1/users#create'
  # get '/api/v1/users/:id', to: 'api/v1/users#show'
  # put '/api/v1/users/:id', to: 'api/v1/users#update'
  # delete '/api/v1/users/:id', to: 'api/v1/users#delete'

end
