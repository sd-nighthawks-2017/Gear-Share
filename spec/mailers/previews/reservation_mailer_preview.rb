# Preview all emails at http://localhost:3000/rails/mailers/reservation_mailer
class ReservationMailerPreview < ActionMailer::Preview
  def new_reservation_email_preview
    ReservationMailer.new_reservation_email(User.find(5), Item.find(6))
  end
end
