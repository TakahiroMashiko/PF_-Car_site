class Admin::DealersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @dealers = Dealer.all.page(params[:page]).per(10)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end
end
