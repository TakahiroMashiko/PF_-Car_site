class Admin::CarOptionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @car_options = CarOption.all.page(params[:page]).per(10)
  end

  def new
    @car_option = CarOption.new
  end

  def create
    @car_option = CarOption.new(car_params)
    if @car_option.save
      flash[:notice] = "新オプションを登録しました"
      redirect_to admin_car_option_path(@car_option.id)
    else
      render "new"
    end
  end

  def show
    @car_option = CarOption.find(params[:id])
    # Tax
    @tax = 1.10
  end

  def edit
    @car_option = CarOption.find(params[:id])
  end

  def update
    @car_option = CarOption.find(params[:id])
    if @car_option.update(car_params)
      flash[:notice] = "オプションの情報を更新しました"
      redirect_to admin_car_option_path(@car_option.id)
    else
      render "edit"
    end
  end

  # Strong parameters
  private
  def car_option_params
    params.require(:car_option).permit(:car_id, :name, :price, :is_active)
  end
end
