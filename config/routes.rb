Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'home/about', to: "homes#about", as: 'about'
  resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update]
  resources :users, only: [:index, :edit, :show, :update]
end
