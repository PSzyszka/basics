require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe '#title_helper' do
    it 'returns in web page title based on controller name' do
      name = ApplicationHelper.new.title_helper('Parkings')
      expect(name).to eq('Parkings')
      name = ApplicationHelper.new.title_helper('PlaceRents')
      expect(name).to eq('Place Rents')
    end
  end
end
