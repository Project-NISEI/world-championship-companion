Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root "homepage#index"
  get 'info', to: 'information#index'
  get 'schedule', to: 'schedule#index'
  get 'timing', to: 'timing#index'
end
