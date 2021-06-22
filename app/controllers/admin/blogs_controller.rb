class Admin::BlogsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @blogs = Blog.all.page(params[:page]).per(10)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "ブログを新規投稿しました"
      redirect_to admin_blog_path(@blog.id)
    else
      render "new"
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
  end

  def destroy
  end
end
