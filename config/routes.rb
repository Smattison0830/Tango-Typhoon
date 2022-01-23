Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :vocabulary, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  end
  
  resources :cards, path: "tango_typhoon", only: [:index, :new, :create, :show, :destroy]
end
