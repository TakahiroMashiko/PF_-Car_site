class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :show, :create, :update]

  def new
    @estimate = Estimate.new
  end

  def confirm
    @estimate = Estimate.new(estimate_params)
    @caroptions = CarOption.all
    # Tax
    @tax = 1.10
  end

  def create
    @estimate = Estimate.new(estimate_params)
    @customer = current_customer.id
    if @estimate.save
      redirect_to confirm_estimates_path
    else
      render "new"
    end
  end

  def finish
    @customer = current_customer
    NotificationMailer.send_confirm_to_customer(@customer).deliver
  end

  # Strong parameters
  private
  def estimate_params
    params.permit(:customer_id, :car_id, :car_option_id, :total, :tax, :car_price, :option_price)
  end
end
