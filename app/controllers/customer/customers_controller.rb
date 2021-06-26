class Customer::CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :edit, :update, :withdrawal, :quit]

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
  end

  def withdrawal
  end

  def quit
  end
end
