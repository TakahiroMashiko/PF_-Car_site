class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts = Contact.all.page(params[:page]).per(10)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  # Strong parameters
  private
  def contact_params
    params.require(:contact).permit(:customer_id, :name, :phone_number, :email, :subject, :message)
  end
end
