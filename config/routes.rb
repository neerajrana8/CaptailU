Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :tournaments, only: [:index, :show]  do
    resources :events, only: [:index]
    resources :teams, only: [:index]
  end
  resources :events, only: [:show]
  resources :teams, only: [:show]
  resources :players, only: [:index, :show]
end
