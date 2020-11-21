Rails.application.routes.draw do
  devise_for :users

  resources :tweets do
    resources :comments, only: :create

    resources :maps

    collection do
      get 'nameSearch'
    end
    collection do
      get 'addressSearch'
    end
  end

  resources :charities
  root to: 'tweets#index'
end
