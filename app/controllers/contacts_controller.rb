class ContactsController < ApplicationController
  def index
    @all_contacts = Contact.all
  end
end
