Rails.application.routes.draw do
  # admin
  devise_for :admins
  namespace :admin do
    resources :visits, only: [:index, :show, :edit, :update]
  end

  # customer
  devise_for :customers
end
