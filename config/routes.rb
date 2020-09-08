Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  get 'users/show_follow'
  get 'users/show_follower'


  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
end