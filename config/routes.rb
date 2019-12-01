Rails.application.routes.draw do
  devise_for :users
  resources :echos do
      member do
        put "upvote", to: "echos#upvote"
        put "downvote", to: "echos#downvote"
      end
    end
  root to:'echos#index'
end