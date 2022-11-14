class PassengerMailer < ApplicationMailer

  def welcome_email
    @passenger = params[:passenger]
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: 'Flight has been booked')
  end
  
end
