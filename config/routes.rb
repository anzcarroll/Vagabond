Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cities#index"
  get "user/:id", to: "users#show", as: "user_show"
  resources :cities do
    resources :posts
  end
end
