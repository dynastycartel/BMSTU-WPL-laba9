Rails.application.routes.draw do
  root 'calc#input', as: 'home'
  post '/output', to: 'calc#output'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
