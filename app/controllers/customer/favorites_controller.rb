class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!, only: [:create, :destoroy]

  def create
  end

  def destoroy
  end
end
