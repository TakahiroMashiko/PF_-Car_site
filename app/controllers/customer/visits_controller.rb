class Customer::VisitsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.customer_id = current_customer.id
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

  # Strong parameters
  private
  def visit_params
    params.require(:visit).permit(:customer_id, :dealer_id, :name, :name_kana, :phone_number, :email, :visit)
  end
end
