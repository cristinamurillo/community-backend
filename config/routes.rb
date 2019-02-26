Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :opportunities, only: [:index, :show, :create, :update]
  resources :organizations, only: [:index, :show, :create, :update]
  resources :users, only: [:show]

end
