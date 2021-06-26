class Customer::CarsController < ApplicationController
  def index
    @cars = Car.all.page(params[:page]).per(10)
    # Tax
    @tax = 1.10
  end

  def show
  end
end
