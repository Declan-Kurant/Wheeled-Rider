Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'vehicles#index'

  resources :vehicles do
    resources :categories
  end

  resources :categories do
    resources :comments
  end

end
