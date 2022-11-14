class PassengerMailer < ApplicationMailer
  default to: -> { Passenger.pluck(:email) },
        from: 'notifications@example.com'

  def welcome_email
    # raise params.inspect
    params[:passenger].each do |passenger|
    @passenger = passenger
    end
    @url = 'http://localhost:3000/'
    mail(to: @passenger, subject: 'Flight has been booked')
  end

end
