class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@flight-booker.com"
  layout "mailer"
end
