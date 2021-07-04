class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :update]

  def new
    @estimate = Estimate.new
    # Tax
    @tax = 1.10
  end

  def create
  end

  def update
  end

  # Strong parameters
  private
  def estimate_params
    params.require(:estimate).permit(:customer_id, :car_id, :car_option_id, :total, :tax, :car_price, :option_price)
  end
end
