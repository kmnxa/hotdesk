Rails.application.routes.draw do
  devise_for :users
  resources :desks
  namespace :admin do
    resources :dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  end
  # Defines the root path route ("/")
   root "desks#home"
end
