Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  get 'profile', to: 'profiles#show', as: 'profile'

  resources :nvts, excepted: %i[destroy edit] do
    resources :transactions, only: %i[new create]
  end

  resources :transactions, excepted: %i[index new create]
end
