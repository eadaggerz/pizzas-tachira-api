Rails.application.routes.draw do
  namespace :api do
    resources :tables, only: %i[index]
  end
end
