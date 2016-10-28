class ContactsController < ApplicationController
  def create
    contact = Contact.find_or_initialize_by({email: contact_params[:email]})

    contact.assign_attributes(contact_params)

    if contact.save
      NewContactMailer.new_contact_email(contact).deliver_later

      render json: contact_params, status: 201
    else
      render json: contact.errors.messages, status: 422
    end
  end

  private def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
