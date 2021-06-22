class Admin::BlogsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @blogs = Blog.all.page(params[:page]).per(10)
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

  def destroy
  end
end
