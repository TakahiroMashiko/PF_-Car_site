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
  devise_for :customers, skip: :all
  devise_scope :customer do
      get 'customers/sign_up' => 'customers/registrations#new', as: :new_customer_registration
      post 'customers/sign_up' => 'customers/registrations#create', as: :customer_registration
      get 'customers/sign_in' => 'customers/sessions#new', as: :new_customer_session
      post 'customers/sign_in' => 'customers/sessions#create', as: :customer_session
      delete '/customers/sign_out' => 'customers/sessions#destroy', as: :destroy_customer_session
  end

  scope module: :customer do
    root to: 'homes#top'
    resources :homes, :except => [:index, :create, :new, :edit, :show, :update, :destroy] do
      collection do
        get 'top'
        get 'about'
        get 'faq'
      end
    end
  end
end
