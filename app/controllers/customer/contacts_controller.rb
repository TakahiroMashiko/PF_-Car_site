class Customer::ContactsController < ApplicationController
  before_action :authenticate_customer!

  def new
    @contact = Contact.new
  end

  def confirm
  end

  def finish
  end

  def create
  end
end
