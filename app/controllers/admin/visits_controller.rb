class Admin::VisitsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @visits = Visit.all.page(params[:page]).per(10)
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
  end
end
