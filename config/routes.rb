Rails.application.routes.draw do
    resources :companies do
      resources :transactions, only: [:new, :create]
    end
  root "companies#index"
end
