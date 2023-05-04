Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "messages#index"
  get '/random', to: 'messages#random'
  get '/greeting', to: 'messages#index'
end
