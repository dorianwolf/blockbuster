class ContactMailer < ApplicationMailer
  default from: 'blockbuster.recording@gmail.com'

  def contact_email(contact)
    @contact = contact
    mail(to: 'blockbuster.recording@gmail.com', subject: 'somebody messaged from the site')
  end
end
