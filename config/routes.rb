Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index] do
    resources :words, only: [:index]
  end

  resources :decks, only: [:index] do
    namespace :api do
      namespace :v1 do
        get 'cards/index', path: "tango_typhoon"
      end
    end
  end


end
