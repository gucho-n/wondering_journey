Rails.application.routes.draw do
  
  devise_for :users

  resources :tweets do
    resources :comments, only: :create 
    collection do
      get 'search'
    end
  end
  root to: 'tweets#index'
  

end
