class VersionsController < ApplicationController
  before_action :find_contact

  def index
    @all_versions = @contact.versions.map(&:reify)
  end

private

  def find_contact
    @contact = Contact.find(params[:contact_id])
  end
end
