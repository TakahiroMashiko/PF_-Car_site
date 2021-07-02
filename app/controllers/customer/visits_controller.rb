class Customer::VisitsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      render "confirm"
    else
      render "new"
    end
  end

  def confirm
  end

  def finish
  end
end
