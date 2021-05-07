Rails.application.routes.draw do
  get 'picture_blogs/index'
  get 'picture_blogs/new'
  get 'picture_blogs/confirm'
  get 'picture_blogs/edit'
  get 'picture_blogs/show'
  root 'users# new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :picture_blogs do
    collection do
    post :confirm
    end
  end
end