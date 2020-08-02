Rails.application.routes.draw do
  get 'favorites/create'
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resource :home, only: [:index] do
    resources :about, only: [:index]
  end
  resources :users, only: [:index, :show, :edit, :update]

end
