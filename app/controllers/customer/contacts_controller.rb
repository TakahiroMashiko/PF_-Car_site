class Customer::ContactsController < ApplicationController
  before_action :authenticate_customer!

  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      render "new"
    end
  end

  def finish
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
    else

    end
  end
end
