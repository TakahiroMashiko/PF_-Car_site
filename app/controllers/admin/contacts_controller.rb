class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts = Contact.all.page(params[:page]).per(10)
  end

  def show
  end
end
