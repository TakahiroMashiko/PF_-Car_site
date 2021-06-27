class Customer::CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :edit, :update, :withdrawal, :quit]

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:success] = "会員情報を更新しました"
      redirect_to customers_path
    else

    end
  end

  def withdrawal
  end

  def quit
  end
end
