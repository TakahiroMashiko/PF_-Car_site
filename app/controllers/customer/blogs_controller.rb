class Customer::BlogsController < ApplicationController
  def index
    @blogs = Blog.all.page(params[:page]).per(10).order("updated_at DESC")
  end

  def show
  end
end
