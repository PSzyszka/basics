require 'rails_helper'

RSpec.describe Person do
  it 'is invalid without first_name' do
    expect(Person.new).to be_invalid
  end
end
