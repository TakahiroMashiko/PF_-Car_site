class Customer::ContactsController < ApplicationController
  before_action :authenticate_customer!

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
      flash[:danger] = "情報が入力されていないか、正しい情報ではありません。再度入力してください。"
      render "new"
    end
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.invalid?
      flash[:danger] = "情報が入力されていないか、正しい情報ではありません。再度入力してください。"
      render "new"
    end
  end

  def finish
  end

  # Strong parameters
  private
  def contact_params
    params.require(:contact).permit(:customer_id, :name, :phone_number, :email, :subject, :message)
  end
end
