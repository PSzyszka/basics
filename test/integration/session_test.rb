require 'rails_helper'
require 'spec_helper'

feature 'testing session' do
  scenario 'person fullname is displayed after log in' do
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    account1 = Account.create(email: 'leszno@gmail.com', password: 'Lipowa', owner_id: 1)
    visit '/parkings'
    click_link('Log in')
    within('form') do
      fill_in 'Email', :with => 'leszno@gmail.com'
      fill_in 'Password', :with => 'Lipowa'
    end
    click_button('Create Account')
    assert has_content? 'Adam Ziutek'
  end

  scenario 'person fullname is not displayed before log in' do
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    account1 = Account.create(email: 'leszno@gmail.com', password: 'Lipowa', owner_id: 1)
    visit '/parkings'
    click_link('Log in')
    within('form') do
      fill_in 'Email', :with => 'leszno@gmail.com'
      fill_in 'Password', :with => 'Lipowa'
    end
    click_button('Create Account')
    assert has_no_content? 'Adam Ziutek'
  end

  scenario 'person fullname is not displayed after log out' do
    person_id  = Person.create(first_name: 'Adam', last_name: 'Ziutek').id
    account1 = Account.create(email: 'leszno@gmail.com', password: 'Lipowa', owner_id: 1)
    visit '/parkings'
    click_link('Log in')
    within('form') do
      fill_in 'Email', :with => 'leszno@gmail.com'
      fill_in 'Password', :with => 'Lipowa'
    end
    click_button('Create Account')
    assert has_content? 'Adam Ziutek'
    click_link('Log out')
    assert has_no_content? 'Adam Ziutek'
  end
end
