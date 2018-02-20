require 'rails_helper'
require 'spec_helper'

feature 'testing place rent' do
  # scenario 'renting a place on parking' do
  #   address_id = Address.create(city: 'Leszno', street: 'Lipowa', zip_code: '15-152').id
  #   person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
  #   person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
  #   Parking.create(day_price: 1, hour_price: 5, places: 150, address_id: address_id, owner_id: person_id)
  #   Car.create(registration_number: 'Bla125', model: 'Mazda', owner_id: person_id2)
  #   visit '/parkings'
  #   click_link('Rent a place')
  #   select('Mazda', :from => 'place_rent[car_id]')
  #   select('1', :from => 'place_rent[parking_id]')
  #   within('form') do
  #     fill_in 'Starts at', :with => '17-01-2018'
  #     fill_in 'Ends at', :with => '25-05-2018'
  #   end
  #   click_button('Create Place rent')
  #   assert has_content? 'List of all place rents'
  # end

  scenario 'if hour and day prices are shown' do
    address_id = Address.create(city: 'Leszno', street: 'Lipowa', zip_code: '15-152').id
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    person_id2 = Person.create(first_name: 'Roman', last_name: 'Koch').id
    person_id3 = Person.create(first_name: 'Paweł', last_name: 'Duch').id
    parking_id = Parking.create(day_price: 5, hour_price: 1, places: 150, address_id: address_id, owner_id: person_id)
    car_id     = Car.create(registration_number: 'Bla125', model: 'Mazda', owner_id: person_id2)
    car_id1    = Car.create(registration_number: 'ELA1515', model: 'Opel', owner_id: person_id2)
    car_id2    = Car.create(registration_number: 'SZY1975', model: 'Lexus', owner_id: person_id3)
    PlaceRent.create(starts_at: Time.new(2018, 2, 17, 16, 37), ends_at: Time.new(2018, 2, 20, 8, 51), parking_id: parking_id, car: car_id)
    PlaceRent.create(starts_at: Time.new(2018, 5, 20, 11, 58), ends_at: Time.new(2018, 6, 25, 15, 20), parking_id: parking_id, car: car_id1)
    PlaceRent.create(starts_at: Time.new(2018, 1, 5, 23, 48), ends_at: Time.new(2018, 1, 10, 19, 05), parking_id: parking_id, car: car_id2)
    visit '/place_rents'
    list_of_elements = [1, 2, 3, 4]
    # column_value_1 = tr.all('td')[2].text
    # column_value_2 = tr.all('td')[3].text
    page.all('table td').each_with_index do |td, index|
      assert td.has_content?(list_of_elements[index])
    end
  end

  # scenario 'renting a place without all data' do
  #   address_id = Address.create(city: 'Leszno', street: 'Lipowa', zip_code: '15-152').id
  #   person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
  #   person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
  #   Parking.create(day_price: 1, hour_price: 5, places: 150, address_id: address_id, owner_id: person_id)
  #   Car.create(registration_number: 'Bla125', model: 'Mazda', owner_id: person_id2)
  #   visit '/parkings'
  #   click_link('Rent a place')
  #   select('Mazda', :from => 'place_rent[car_id]')
  #   select('1', :from => 'place_rent[parking_id]')
  #   within('form') do
  #     fill_in 'Starts at', :with => '17-01-2018'
  #   end
  #   click_button('Create Place rent')
  #   assert has_content? 'error' #trzeba to naprawić najpierw, aby wyskoczył błąd, a nie wysypywał błędu
  # end
end
