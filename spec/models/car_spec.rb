require 'rails_helper'

RSpec.describe Car do
  it 'is invalid without valid attributes' do
    expect(Car.new).to_not be_valid
  end

  it 'is invalid without registration_number' do
    person  = Person.create(first_name: 'Ala')
    car = Car.create(registration_number: nil, model: 'Mazda', owner: person)
    expect(car).to be_invalid
  end

  it 'is invalid without model' do
    person  = Person.create(first_name: 'Ala')
    car = Car.create(registration_number: 'ELA1234', model: nil, owner: person)
    expect(car).to be_invalid
  end

  it 'is invalid without owner' do
    car = Car.create(registration_number: 'ELA1234', model: 'Mazda', owner: nil)
    expect(car).to be_invalid
  end
end
