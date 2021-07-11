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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # Strong parameters
  private
  def review_params
    params.require(:review).permit(:customer_id, :title, :body, :evaluation)
  end
end
