Rails.application.routes.draw do
  devise_for :users
  get 'public/homepage'

  resources :posts

  # get "/dashboard" => 'users#index'

  root to: "public#homepage"
end

