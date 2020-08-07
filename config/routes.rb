Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :shows
      resources :channels

      root to: "users#index"
    end
  devise_for :users
	root to: "home#index"
  get 'search', to: "home#search"
	post 'favorite', to: "home#favorite"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
