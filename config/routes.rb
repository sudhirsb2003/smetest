SmeSolution::Application.routes.draw do
  devise_for :users# , :controllers => {:registrations => "registrations"}
  resources :categories
  resources :products
  root :to => 'products#index'
end
