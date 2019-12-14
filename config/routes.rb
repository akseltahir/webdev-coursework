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
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'  
  root to:'echos#index'
end