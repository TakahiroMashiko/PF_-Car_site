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
    @estimate = Estimate.find(params[:id])
    @customer = current_customer.id
    if @estimate.save
      NotificationMailer.send_confirm_to_customer(@customer).deliver
      redirect_to confirm_estimates_path
    else
      render "new"
    end
  end

  def finish
    @estimate = Estimate.find(params[:id])
    @estimate.customer_id = current_customer.id
    if @estimate.customer_id == current_customer.id

      redirect_to customers_path
    else
      render "new"
    end
  end

  # Strong parameters
  private
  def estimate_params
    params.permit(:customer_id, :car_id, :car_option_id, :total, :tax, :car_price, :option_price)
  end
end
