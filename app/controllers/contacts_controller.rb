class ContactsController < ApplicationController
  def create
    contact = Contact.new(contact_params)

    if contact.save
      render json: contact_params, status: 201
    else
      render json: contact.errors.messages, status: 422
    end
  end

  private def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
