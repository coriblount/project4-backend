Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

    resources :users
  resources :goals
  resources :finance_items
  resources :list_items
  resources :trips
  resources :appointments
  post '/login', to: "auth#login"

    end
  end
end
