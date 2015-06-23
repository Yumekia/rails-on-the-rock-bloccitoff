Rails.application.routes.draw do
  devise_for :users
  root to: 'shallows#welcome'

  resources :users, only: [:show]

  resources :lists do
    resources :tasks, except: [:new, :show, :edit]
  end

end
