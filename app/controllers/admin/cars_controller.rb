class Admin::CarsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @cars = Car.all.page(params[:page]).per(10)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = "新モデルを登録しました"
      redirect_to admin_car_path(@car.id)
    else
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
  end

  # Strong parameters
  private
  def car_params
    params.require(:car).permit(:genre_id, :image_id, :name, :introduction, :price, :is_active)
  end
end
