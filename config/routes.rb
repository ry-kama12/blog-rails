Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    # devise_scope :uset do
    #   get 'login', to: 'devise/sessions#new'
    #   post 'login', to: 'devise/sessions#create'
    #   delete 'signout', to: 'devise/sessions#destroy'
    # end
end
