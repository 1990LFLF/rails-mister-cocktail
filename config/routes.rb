Rails.application.routes.draw do

  get 'doses/new'
  get 'doses/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :destroy]
  end

  root to: 'cocktails#index'
end
