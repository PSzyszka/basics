require 'rails_helper'
require 'spec_helper'

feature 'testing parkings' do
  scenario 'opening_parkings_index' do
    visit '/parkings'
    assert has_content? 'List of all parkings'
  end

  scenario 'opening_parkings_details' do
    address_id = Address.create(city: 'Leszno', street: 'Lipowa', zip_code: '15-152').id
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    Parking.create(day_price: 1, hour_price: 5, places: 150, address_id: address_id, owner_id: person_id)
    visit '/parkings'
    click_link('Details')
    assert has_content? 'Details to parking'
  end

  scenario 'adding_new_parking' do
    Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    visit '/parkings'
    click_link 'Create new'
    within('form') do
      fill_in 'City', with: 'Leszno'
      fill_in 'Street', with: 'Lipowa'
      fill_in 'Zip code', with: '15-152'
      fill_in 'Hour price', with: '15'
      fill_in 'Day price', with: '100'
      fill_in 'Places', with: '120'
    end
    click_button 'Create Parking'
    assert has_content? 'List of all parkings'
    assert has_content? 'List of place rents'
  end

  scenario 'adding_new_parking with missing text' do
    Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    visit '/parkings'
    click_link 'Create new'
    within('form') do
      fill_in 'City', with: 'Leszno'
      fill_in 'Street', with: 'Lipowa'
      fill_in 'Zip code', with: '15-152'
      fill_in 'Hour price', with: '15'
      fill_in 'Places', with: '120'
    end
    click_button 'Create Parking'
    assert has_content? "Day price can't be blank"
  end

  scenario 'edting_parking' do
    address_id = Address.create(city: 'Leszno', street: 'Lipowa', zip_code: '15-152').id
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    Parking.create(day_price: 1, hour_price: 5, places: 150, address_id: address_id, owner_id: person_id)
    visit '/parkings'
    click_link 'Edit'
    within('form') do
      fill_in 'City', with: 'Wschowa'
    end
    click_button 'Update Parking'
    click_link 'Back'
    assert has_content? 'Wschowa'
    assert has_content? 'List of all parkings'
  end

  # scenario 'deleting_parking' do
  #   visit '/parkings'
  #   click_link 'Create new'
  #   within('form') do
  #     fill_in 'City', with: 'Leszno'
  #     fill_in 'Street', with: 'Lipowa'
  #     fill_in 'Zip code', with: '15-152'
  #     fill_in 'Hour price', with: '15'
  #     fill_in 'Day price', with: '100'
  #     fill_in 'Places', with: '120'
  #   end
  #   click_button 'Create Parking'
  #   click_link 'Delete'
  #   page.accept_confirm
  #   assert has_no_content? 'Leszno'
  # end

end

