class Customer::CustomersController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :edit, :update, :withdrawal, :quit]

  def show
  end

  def edit
  end

  def update
  end

  def withdrawal
  end

  def quit
  end
end
