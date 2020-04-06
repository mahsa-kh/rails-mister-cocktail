Rails.application.routes.draw do


  root to: 'cocktails#index'

  resources :cocktails, only: [:new, :show, :index, :create] do
    resources :doses, only: [ :create, :new]
    resources :reviews, only: [ :create, :new, :show]
  end
 resources :doses, only: [:destroy]

 resources :ingredients, only: [:new, :show, :index, :create]
end
