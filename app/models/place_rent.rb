
class PlaceRent < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :parking, optional: true
  accepts_nested_attributes_for :car
  accepts_nested_attributes_for :parking

  validates :starts_at, :ends_at, :parking, :car, presence: true

  def calculate_price
    hours1 = (ends_at - starts_at)/3600
    if hours1 % 24 == 0
       left_hours = 0
    else
      left_hours = hours1 % 24
    end
    days  = (hours1 - left_hours)/24
    hours = left_hours.ceil

    day_price = parking.day_price
    hour_price = parking.hour_price

    price = day_price * days + hour_price * hours
  end

  class CreatePlaceRentsCallbacks
    def self.after_create(place_rent)
      place_rent.price = place_rent.calculate_price
      place_rent.save
    end
  end

  after_create CreatePlaceRentsCallbacks
end
