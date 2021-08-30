class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def thanks_email(myparams=nil)
    @passenger = myparams.nil? ? params[:passenger] : myparams[:passenger] 
    mail(to: @passenger.email, subject: 'Thank you for your reservation')
  end
end
