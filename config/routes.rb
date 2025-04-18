Rails.application.routes.draw do

  devise_for :users

  root 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :index, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
