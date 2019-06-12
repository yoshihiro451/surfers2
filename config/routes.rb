Rails.application.routes.draw do
	root to: "topics#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :topics do
  	resources :chats
  end
  resources :contcts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

