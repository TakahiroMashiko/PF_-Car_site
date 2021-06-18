class Admin::CarsController < ApplicationController
  before_action :authenticate_admin!

  def index
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

  # Strong parameters
  private
  def item_params
    params.require(:car).permit(:genre_id, :image_id, :name, :introduction, :price, :is_active)
  end
end
