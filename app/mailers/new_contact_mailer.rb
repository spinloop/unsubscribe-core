class NewContactMailer < ApplicationMailer
  def new_contact_email(contact)
    @contact = contact

    headers = {
      from:          ENV['CONTACT_EMAIL_FROM'],
      to:            ENV['CONTACT_EMAIL_TO'],
      bcc:           ENV['CONTACT_EMAIL_BCC'],
      subject:       "New Unsubscribe message from #{@contact.full_name}",
      template_name: 'new_contact_email',
    }

    mail(headers)
  end
end
