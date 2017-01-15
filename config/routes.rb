Rails.application.routes.draw do
  resources :parents, only: [:index]
  resources :kids, only: [:index] do
    resources :transactions, only: [:index, :create, :destroy]
  end
end
