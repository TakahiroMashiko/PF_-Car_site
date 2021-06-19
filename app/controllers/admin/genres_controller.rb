class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
  end

  def edit
  end

  def update
  end

  # Strong parameters
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
