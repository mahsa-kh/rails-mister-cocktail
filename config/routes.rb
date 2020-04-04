Rails.application.routes.draw do

  get 'ingredients/index'
  get 'ingredients/show'
  root to: 'cocktails#index'

  resources :cocktails, only: [:new, :show, :index, :create] do
    resources :doses, only: [ :create, :new]
  end
 resources :doses, only: [:destroy]

 resources :ingredients, only: [:new, :show, :index, :create]
end
