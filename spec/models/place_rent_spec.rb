require 'rails_helper'

RSpec.describe PlaceRent do
  it 'is invalid without valid attributes' do
    expect(PlaceRent.new).to be_invalid
  end

  it 'is invalid without starts_at' do
    person  = Person.create(first_name: 'Ala')
    car     = Car.create(registration_number: 'ELA1234', model: 'Mazda', owner: person)
    parking = Parking.create(hour_price: 2, day_price: 1, places: 1)
    place_rent = PlaceRent.create(starts_at: nil, ends_at: 5.seconds.from_now, parking: parking, car: car)
    expect(place_rent).to be_invalid
  end

  it 'is invalid without ends_at' do
    person  = Person.create(first_name: 'Ala')
    car     = Car.create(registration_number: 'ELA1234', model: 'Mazda', owner: person)
    parking = Parking.create(hour_price: 2, day_price: 1, places: 1)
    place_rent = PlaceRent.create(starts_at: Time.now, ends_at: nil, parking: parking, car: car)
    expect(place_rent).to be_invalid
  end

  it 'is invalid without parking' do
    person  = Person.create(first_name: 'Ala')
    car     = Car.create(registration_number: 'ELA1234', model: 'Mazda', owner: person)
    place_rent = PlaceRent.create(starts_at: Time.now, ends_at: 5.seconds.from_now, parking: nil, car: car)
    expect(place_rent).to be_invalid
  end

  it 'is invalid without car' do
    parking = Parking.create(hour_price: 2, day_price: 1, places: 1)
    place_rent = PlaceRent.create(starts_at: Time.now, ends_at: 5.seconds.from_now, parking: parking, car: nil)
    expect(place_rent).to be_invalid
  end
end
