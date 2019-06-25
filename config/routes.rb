Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  root to: "topics#index"
  get 'static_page/index'
  devise_for :users
  resources :topics do
  	resource :chats, only: [:create, :destroy]
  end
  resources :contacts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

