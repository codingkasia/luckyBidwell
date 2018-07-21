Rails.application.routes.draw do
  root to: 'site#index'

  namespace :api do
      namespace :v1 do
        resources :guesses, only: [:index, :create]
      end
    end
  mount ActionCable.server => '/cable'
end
