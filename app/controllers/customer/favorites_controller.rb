class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!, only: [:create, :destroy]

  def create
    @blog = Blog.find(params[:blog_id])
    favorite = current_customer.favorites.new(blog_id: params[:blog_id])
    favorite.save
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    favorite = Favorite.find_by(blog_id: params[:blog_id], customer_id: current_customer.id)
    favorite.destroy
  end
end
