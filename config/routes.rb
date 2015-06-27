Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update, :show, :index]
  
   resources :lists, only: [:index] do
    resources :tasks, only: [:create, :destroy]
  end
  
  root to: 'shallows#welcome'

  resources :users, only: [:show]

  resources :lists do
    resources :tasks, except: [:new, :show, :edit]
  end

end
