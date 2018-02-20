require 'rails_helper'

RSpec.describe Address do
  it "is invalid without valid attributes" do
    expect(Address.new).to_not be_valid
  end

  it "is invalid without city" do
    address = Address.create(city: nil, street: 'Wola' , zip_code: '60-553')
    expect(address).to be_invalid
  end

  it "is invalid without street" do
    address = Address.create(city: 'Wroclaw', street: nil , zip_code: '60-553')
    expect(address).to be_invalid
  end

  it "is invalid without zip_code" do
    address = Address.create(city: 'Wroclaw', street: 'Wola' , zip_code: nil)
    expect(address).to be_invalid
  end

  it "is invalid if zip_code hasn't the correct format" do
    address = Address.new(city: 'Wroclaw', street: 'Wola' , zip_code: '600-553')
    expect(address).to be_invalid
  end

  it "is invalid if zip_code hasn't the correct format" do
    address = Address.new(city: 'Wroclaw', street: 'Wola' , zip_code: '60-0553')
    expect(address).to be_invalid
  end

  it "is invalid if zip_code hasn't the correct format" do
    address = Address.new(city: 'Wroclaw', street: 'Wola' , zip_code: '604553')
    expect(address).to be_invalid
  end
end
