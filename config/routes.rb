Rails.application.routes.draw do
  # admin
  devise_for :admins
  namespace :admin do
    root :to =>'visits#index'
    resources :visits, only: [:index, :show, :edit, :update]
  end

  # customer
  devise_for :customers
end
