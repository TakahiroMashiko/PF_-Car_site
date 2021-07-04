class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :update]

  def new
    @estimate = Estimate.new
    # Tax
    @tax = 1.10
    @car = Car.find(params[:id])
    @car_option = CarOption.find(params[:id])
  end

  def create
  end

  def update
  end
end
