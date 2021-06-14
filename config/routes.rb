Rails.application.routes.draw do
  namespace :admin do
    resouces :visits, only: [:index, :show, :edit, :update]
  end
  devise_for :admins
  devise_for :customers
end
