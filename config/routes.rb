Rails.application.routes.draw do
  resources :user_processes
  resources :users
  resources :company_areas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
