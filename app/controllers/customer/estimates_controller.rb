class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :show, :create, :update]

  def new
    @estimate = Estimate.new
  end

  def confirm
    @estimate = Estimate.new(estimate_params)
    # Tax
    @tax = 1.10
  end

  def create
    @estimate = Estimate.find(params[:id])
    @estimate.customer_id = current_customer.id
    if @estimate.save
      redirect_to confirm_estimates_path
    else
      render "new"
    end
  end

  def update
  end

  # Strong parameters
  private
  def estimate_params
    params.permit(:customer_id, :car_id, :car_option_id, :total, :tax, :car_price, :option_price)
  end
end
