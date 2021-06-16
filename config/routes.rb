Rails.application.routes.draw do
  # admin
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_up' => 'admins/registrations#new', as: :new_admin_registration
    post 'admins/sign_up' => 'admins/registrations#create', as: :admin_registration
    get 'admins/sign_in' => 'admins/sessions#new', as: :new_admin_session
    post 'admins/sign_in' => 'admins/sessions#create', as: :admin_session
    delete '/admins/sign_out' => 'admins/sessions#destroy', as: :destroy_admin_session
  end

  namespace :admin do
    root :to =>'visits#index'
    resources :visits, only: [:index, :show, :edit, :update]
  end

  # customer
  devise_for :customers
end
