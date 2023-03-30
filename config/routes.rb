Rails.application.routes.draw do
  get '/heroes', to: 'heroes#index'
  get '/heroes/:id', to: 'heroes#show'
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
  put '/powers/:id', to: 'powers#update'
  post '/hero_powers', to: 'hero_powers#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
