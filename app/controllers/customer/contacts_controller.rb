class Customer::ContactsController < ApplicationController
  before_action :authenticate_customer!, only: [:new, :create, :confirm, :finish]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.customer_id = current_customer.id
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to finish_contacts_path
    else
      render "new"
    end
  end

  def confirm
    @contact = Contact.new(contact_params)
  end

  def finish
  end

  # Strong parameters
  private
  def contact_params
    params.require(:contact).permit(:customer_id, :name, :phone_number, :email, :subject, :message)
  end
end
