class Parking < ApplicationRecord
  # belongs_to :owner, class_name: Person
  # belongs_to :address
  # has_many :place_rents

  # validates :hour_price, :day_price, numericality: true, presence: true
  # validates :number_of_places, presence: true
  # enum kind: [ :outdoor, :indoor, :private, :street ]
end
