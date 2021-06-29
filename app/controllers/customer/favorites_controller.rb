class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!, only: [:create, :destroy]

  def create
    blog = Blog.find(params[:id])
    favorite = current_customer.favorites.new(blog_id: blog.id)
    favorite.save
    redirect_to blog_path(blog)
  end

  def destroy
  end
end
