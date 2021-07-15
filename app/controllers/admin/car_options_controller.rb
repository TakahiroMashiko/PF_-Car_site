class Admin::CarOptionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @caroptions = CarOption.all.page(params[:page]).per(10)
  end

  def new
    @caroption = CarOption.new
  end

  def create
    @caroption = CarOption.new(caroption_params)
    if @caroption.save
      flash[:notice] = "新オプションを登録しました"
      redirect_to admin_car_option_path(@caroption.id)
    else
      render "new"
    end
  end

  def show
    @caroption = CarOption.find(params[:id])
    # Tax
    @tax = 1.10
  end

  def edit
    @caroption = CarOption.find(params[:id])
  end

  def update
    @caroption = CarOption.find(params[:id])
    if @caroption.update(caroption_params)
      flash[:notice] = "オプションの情報を更新しました"
      redirect_to admin_car_option_path(@caroption.id)
    else
      render "edit"
    end
  end

  # Strong parameters
  private
  def caroption_params
    params.require(:car_option).permit(:car_id, :name, :price, :is_active)
  end
end
