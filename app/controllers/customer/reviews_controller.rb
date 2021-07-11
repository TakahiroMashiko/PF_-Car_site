class Customer::ReviewsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @reviews = Review.all.page(params[:page]).per(10)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:notice] = "レビューを新規投稿しました"
      redirect_to review_path(@review.id)
    else
      render "new"
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "レビューの内容を更新しました"
      redirect_to review_path(@review.id)
    else
      render "edit"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "レビューを削除しました"
      redirect_to reviews_path
    else
      render "edit"
    end
  end

  # Strong parameters
  private
  def review_params
    params.require(:review).permit(:customer_id, :title, :body, :evaluation)
  end
end
