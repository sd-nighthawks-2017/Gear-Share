class ReservationMailer < ApplicationMailer
  default from: "notifications@gear-share-.com"

  def new_reservation_email(user, item)
    @user = user
    @item = item
    @url = "https://gr-share.herokuapp.com/users/sign_in"
    mail(to: @user.email, subject: "New reservation request")
  end
end
