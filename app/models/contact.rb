class Contact < ApplicationRecord
  has_paper_trail

  validates :first_name, :last_name, :email, :phone, presence: true
  validates :email, uniqueness: true
end
