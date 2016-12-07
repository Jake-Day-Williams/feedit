Rails.application.routes.draw do

  devise_for :users

  resources :messages do
    member do
      put "like",    to: "messages#upvote"
      put "dislike", to: "messages#downvote"
    end
    resources :comments
  end

  root 'messages#index'

end
