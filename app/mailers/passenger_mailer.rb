class PassengerMailer < ApplicationMailer
  def confirmation_email(passenger = nil, flight = nil)
    @passenger = passenger || params[:passenger]
    @flight = flight || params[:flight]
    mail(to: @passenger.email, subject: "Your flight booking is confirmed")
  end
end
