class ReservationMailer < ApplicationMailer
  default from: "notifications@gear-share-.com"

  def new_reservation_email(user, item)
    @user = user
    @item = item
    @url = "gear-share-.herokuapp.com"
    mail(to: @user.email, subject: "New reservation request")
  end
end
