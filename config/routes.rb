SmeSolution::Application.routes.draw do
  devise_for :users

  resources :categories
  resources :products
  root :to => 'products#index'
end
