Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  namespace :admin do
    resources :companies
    post "companies_search", to: "companies#search"
  end
end
