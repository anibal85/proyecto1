Rails.application.routes.draw do
  get 'pages/index'
  get 'services/service'
  devise_for :users
  resources :properties
  resources :measurers
  root to:'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
