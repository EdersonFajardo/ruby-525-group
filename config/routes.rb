Rails.application.routes.draw do

  get 'users/index_json', to: 'users#index_json', as: 'users_json'

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
