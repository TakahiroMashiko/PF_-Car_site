class NotificationMailer < ApplicationMailer
  default from: "sengoku.cars.smtp@gmail.com"

  def send_confirm_to_customer(customer)
    @customer = customer
     mail(
      subject: "[Sengoku Cars]モデルの見積り",
      to: @customer.email
    ) do |format|
      format.text
    end
  end
end
