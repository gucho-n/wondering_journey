Rails.application.routes.draw do
  get 'tweets/index'
  devise_for :users
  resources :tweets
  root to: 'tweets#index'
end
