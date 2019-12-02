Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :echos do
      member do
        put "upvote", to: "echos#upvote"
        put "downvote", to: "echos#downvote"
      end
      resources :comments
    end
  root to:'echos#index'
end