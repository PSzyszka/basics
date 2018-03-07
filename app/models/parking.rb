class Parking < ApplicationRecord
  belongs_to :owner, class_name: 'Person', optional: true
  belongs_to :address, optional: true
  has_many :place_rents
  has_one :account
  accepts_nested_attributes_for :address

  validates :hour_price, :day_price, :places, numericality: true, presence: true
  enum kind: [:outdoor, :indoor, :private, :street], _prefix: :parking

  scope :min_hour_price, ->(min_hour_price) { where('hour_price >= :min_hour_price', { min_hour_price: min_hour_price }) }
  scope :max_hour_price, ->(max_hour_price) { where('hour_price <= :max_hour_price', { max_hour_price: max_hour_price }) }

  scope :min_day_price, ->(min_day_price) { where('day_price >= :min_day_price', { min_day_price: min_day_price }) }
  scope :max_day_price, ->(max_day_price) { where('day_price <= :max_day_price', { max_day_price: max_day_price }) }

  scope :public_kinds, -> { where(kind: [:outdoor, :indoor, :street]) }

  class ParkingCallbacks
    def after_destroy(parking)
      parking.place_rents.each do |place_rent|
        place_rent.ends_at = Time.now
        place_rent.save
      end
    end
  end

  after_destroy ParkingCallbacks.new

  def self.search(search_criteria)
    if search_criteria == nil || search_criteria.empty?
      Parking.all
    else
      parkings = Parking.all

      city = search_criteria[:search]
      parkings = Parking.left_joins(:address).merge(Address.city(city)) if city.present?

      min_hour_price = search_criteria[:min_hour_price]
      parkings = parkings.min_hour_price(min_hour_price) if min_hour_price.present?

      max_hour_price = search_criteria[:max_hour_price]
      parkings = parkings.max_hour_price(max_hour_price) if max_hour_price.present?

      min_day_price = search_criteria[:min_day_price]
      parkings = parkings.min_day_price(min_day_price) if min_day_price.present?

      max_day_price = search_criteria[:max_day_price]
      parkings = parkings.max_day_price(max_day_price) if max_day_price.present?

      private_parking = search_criteria[:private]

      public_parking = search_criteria[:public]

      if public_parking.present? && private_parking.present?
        parkings
      elsif public_parking.present?
        parkings = parkings.public_kinds if public_parking.present?
      elsif private_parking.present?
        parkings = parkings.parking_private if private_parking.present?
      else
        parkings = []
      end

      parkings
    end
  end
end
