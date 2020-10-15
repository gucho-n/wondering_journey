Rails.application.routes.draw do
  
  devise_for :users

  resources :tweets do
    resources :comments, only: :create 
  end
  root to: 'tweets#index'

end
