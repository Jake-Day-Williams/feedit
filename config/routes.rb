Rails.application.routes.draw do

  devise_for :users

  resources :messages do
    member do
      put "like",    to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end

  root 'messages#index'

end
