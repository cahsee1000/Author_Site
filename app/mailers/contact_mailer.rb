class ContactMailer < ApplicationMailer
  def contact_email(user)
    @contact_form = user
    mail(from: 'clmorrison93@gmail.com', subject: 'Contact Form Submission')
  end
end