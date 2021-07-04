class Customer::EstimatesController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :update]

  def new
    @estimate = Estimate.new
  end

  def update
  end

  def create
  end
end
