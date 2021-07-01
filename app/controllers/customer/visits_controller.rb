class Customer::VisitsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @visit = Visit.new
  end

  def create
  end

  def confirm
  end

  def finish
  end
end
