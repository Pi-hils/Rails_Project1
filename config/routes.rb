Rails.application.routes.draw do
  devise_for :users
  get 'public/homepage'

  resources :posts do
    resources :comments
  end

  # get "/dashboard" => 'users#index'

  root to: "public#homepage"
end

