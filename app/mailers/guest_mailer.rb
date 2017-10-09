class GuestMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def invite_email(guest)
    @guest = guest
    @url  = 'http://example.com/login'
    mail(to: @guest.email, subject: 'You are invited to')
  end
end
