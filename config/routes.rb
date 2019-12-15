Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'about', to: 'home#about'
  get 'methodology', to: 'home#methodology'
  resources :products, only: [:index, :show] do 
    resources :subscriptions, only: [:create]
  end
  resources :models

end
