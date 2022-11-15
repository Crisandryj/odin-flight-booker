class PassengerMailer < ApplicationMailer
  default to: -> { Passenger.pluck(:email) },
        from: 'notifications@example.com'

  def welcome_email
    # raise params.inspect
    params[:passenger].each do |passenger|
    @passenger = passenger
    @url = 'http://localhost:3000/'
    mail(to: @passenger.email, subject: "Flight has been booked #{@passenger.name}")
  end
  end

end
