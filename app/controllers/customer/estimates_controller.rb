class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :update]

  def new
    @estimate = Estimate.new
  end

  def create
  end

  def update
  end
end
