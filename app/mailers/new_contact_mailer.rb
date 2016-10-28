class NewContactMailer < ApplicationMailer
  def new_contact_email(contact)
    @contact = contact

    headers = {
      from:          'spinloop@gmail.com',
      to:            'spinloop@gmail.com',
      bcc:           'spinloop@gmail.com',
      subject:       'New Contact Request',
      template_name: 'new_contact_email',
    }

    mail(headers)
  end
end
