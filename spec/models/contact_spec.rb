require 'rails_helper'

RSpec.describe Contact, :type => :model do
  let(:contact) do
    build(:contact)
  end

  it "is valid with valid attributes" do
    expect(contact).to be_valid
  end

  it "is not valid without a first_name" do
    contact.first_name = nil

    expect(contact).not_to be_valid
    expect(contact.errors.messages).to eq({
      first_name: ["can't be blank"]
    })
  end

  it "is not valid without a last_name" do
    contact.last_name = nil

    expect(contact).not_to be_valid
    expect(contact.errors.messages).to eq({
      last_name: ["can't be blank"]
    })
  end

  it "is not valid without a phone" do
    contact.phone = nil

    expect(contact).not_to be_valid
    expect(contact.errors.messages).to eq({
      phone: ["can't be blank"]
    })
  end

  it "is not valid without an email" do
    contact.email = nil

    expect(contact).not_to be_valid
    expect(contact.errors.messages).to eq({
      email: ["can't be blank"]
    })
  end
end
