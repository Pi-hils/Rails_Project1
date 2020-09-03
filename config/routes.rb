Rails.application.routes.draw do
  devise_for :users
  get 'public/homepage'
  get 'post/like/:post_id' => "likes#save_like"

  resources :posts do
    resources :comments
  end

  # get "/dashboard" => 'users#index'

  root to: "public#homepage"
end

