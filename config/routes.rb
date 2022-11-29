Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users


  resources :nvts, excepted: %i[destroy edit] do
    resources :transactions
  end

  get '/profile', to: 'pages#profile', as: 'profile'

end
