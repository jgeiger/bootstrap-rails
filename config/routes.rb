APP_NAME::Application.routes.draw do

  get "/auth/:provider/callback", to: "sessions#create"
  get "/auth/failure", to: "sessions#failure"
  get "/sign_out", to: "sessions#destroy", as: "sign_out"
  get "/sign_in" => redirect("/auth/google_oauth2"), as: "sign_in"
  get "/dashboard", to: "users#dashboard", as: "dashboard"
  get "/help", to: "pages#help", as: :help

  resources :sessions
  resources :users

  root to: 'pages#help'
end
