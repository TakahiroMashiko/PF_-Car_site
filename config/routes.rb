Rails.application.routes.draw do
  # admin
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_up' => 'admins/registrations#new', as: :new_admin_registration
    post 'admins/sign_up' => 'admins/registrations#create', as: :admin_registration
    get 'admins/sign_in' => 'admins/sessions#new', as: :new_admin_session
    post 'admins/sign_in' => 'admins/sessions#create', as: :admin_session
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: :destroy_admin_session
  end

  namespace :admin do
    root :to =>'visits#index'
    resources :customers, only: [:index, :edit, :show, :update]
    resources :visits, only: [:index, :show, :edit, :update]
    resources :cars, except: [:destroy]
    resources :car_options, except: [:destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :blogs
    resources :contacts, only: [:index, :show]
    resources :dealers, except: [:destroy]
  end

  # customer
  devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_up' => 'customers/registrations#new', as: :new_customer_registration
    post 'customers/sign_up' => 'customers/registrations#create', as: :customer_registration
    get 'customers/sign_in' => 'customers/sessions#new', as: :new_customer_session
    post 'customers/sign_in' => 'customers/sessions#create', as: :customer_session
    delete 'customers/sign_out' => 'customers/sessions#destroy', as: :destroy_customer_session
  end

  scope module: :customer do
    root to: 'homes#top'
    resources :homes, :except => [:index, :create, :new, :edit, :show, :update, :destroy] do
      collection do
        get 'top'
        get 'faq'
      end
    end
    resource :customers, only: [:edit, :show, :update] do
      collection do
        get 'withdrawal'
        patch 'quit'
      end
    end
    resources :visits, only: [:new, :create] do
      collection do
        post 'confirm'
        get 'finish'
      end
    end
    resources :cars, only: [:index, :show]
    resources :contacts, only: [:new, :create] do
    collection do
        post 'confirm'
        get 'finish'
      end
    end
    resources :blogs, only: [:index, :show] do
      resource :favorites, only: [:create, :destroy]
    end
    resources :dealers, only: [:index, :show]
    resources :estimates, only: [:new, :create] do
    collection do
        post 'confirm'
        get 'finish'
      end
    end
    resources :reviews
  end
end
