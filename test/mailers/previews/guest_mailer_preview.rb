# Preview all emails at http://localhost:3000/rails/mailers/guest_mailer
class GuestMailerPreview < ActionMailer::Preview
  def invite_email
    GuestMailer.invite_email(Guest.first)
  end
end
