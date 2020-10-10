Rails.application.routes.draw do
  get 'tweets/index'
  devise_for :users
<<<<<<< HEAD
  root to: 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  resources :tweets
  root to: 'tweets#index'
>>>>>>> parent of d530501... Revert "最終修正２"
end
