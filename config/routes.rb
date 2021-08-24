Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resource :tournaments, only: [:index, :show] do
    resource :events, only: [:index]
    resource :teams, only: [:index]
  end
  resource :events, only: [:show]
  resource :teams, only: [:show]
  resource :players, only: [:index, :show]
end
