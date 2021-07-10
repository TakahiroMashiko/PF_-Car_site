class NotificationMailer < ApplicationMailer
  default from: "sengoku.cars.smtp@gmail.com"

  def send_confirm_to_customer(customer)
    @customer = customer
    @car = Car.all
    @caroptions = CarOption.all
    # Tax
    @tax = 1.10
     mail(
      subject: "[Sengoku Cars]モデルの見積り",
      to: @customer.email
    ) do |format|
      format.text
    end
  end
end
