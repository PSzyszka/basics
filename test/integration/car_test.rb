require 'rails_helper'
require 'spec_helper'

feature 'testing cars' do
  scenario 'opening_parkings_index' do
    person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
    Car.create(registration_number: 'Bla125', model: 'Mazda', owner_id: person_id2)
    visit '/cars'
    assert has_content? 'List of all cars'
  end

  scenario 'opening_cars_details' do
    person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
    Car.create(registration_number: 'Bla125', model: 'Mazda', owner_id: person_id2)
    visit '/cars'
    click_link('Details')
    assert has_content? 'Details to car'
  end

  scenario 'adding_new_car' do
    person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
    visit '/cars'
    click_link 'Create new'
    within('form') do
      fill_in 'car[registration_number]', with: 'ELA0530'
      fill_in 'car[model]', with: 'Opel'
    end
    click_button 'Save Car'
    assert has_content? 'List of all cars'
  end

  scenario 'adding_new_car with missing text' do
    person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
    visit '/cars'
    click_link 'Create new'
    within('form') do
      fill_in 'car[registration_number]', with: 'ELA0530'
    end
    click_button 'Save Car'
    assert has_content? "Model can't be blank"
  end

  scenario 'edting_parking' do
   person_id2  = Person.create(first_name: 'Roman', last_name: 'Koch').id
    visit '/cars'
    click_link 'Create new'
    within('form') do
      fill_in 'car[registration_number]', with: 'ELA0530'
      fill_in 'car[model]', with: 'Opel'
    end
    click_button 'Save Car'
    click_link 'Edit'
    within('form') do
      fill_in 'car[registration_number]', with: 'ELA1991'
    end
    click_button 'Update Car'
    assert has_content? "ELA1991"
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
  #   assert has_no_content? "Leszno"
  # end

end
