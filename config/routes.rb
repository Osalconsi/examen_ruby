Rails.application.routes.draw do
  resources :vacants
  devise_for :people
  devise_for :companies
  #get 'sites/index'
  root to: "sites#index"

end
