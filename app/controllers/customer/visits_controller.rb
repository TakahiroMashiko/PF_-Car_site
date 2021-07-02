class Customer::VisitsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      render "finish"
    else
      render "new"
    end
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render "new"
    end
  end

  def finish
  end

end
