class Admin::VisitsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @visits = Visit.all.page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end

  def update
  end
end
