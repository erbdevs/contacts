class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update]

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
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render :edit, status: :unprocessable_entity
    end
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

  def find_contact
    @contact = Contact.find(params[:id])
  end
end
