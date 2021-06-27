class Customer::DealersController < ApplicationController
  def index
    @dealers = Dealer.all.page(params[:page]).per(10)
  end

  def show
  end
end
