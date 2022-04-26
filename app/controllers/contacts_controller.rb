class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @all_contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

private

  def contact_params
    params.require(:contact).permit(
      :id,
      :first_name,
      :last_name,
      :phone,
      :email
    )
  end
end
