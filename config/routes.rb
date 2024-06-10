Rails.application.routes.draw do
    resources :companies do
      resources :transactions
    end
  root "companies#index"
end
