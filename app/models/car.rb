class Car < ApplicationRecord
  belongs_to :owner, class_name: 'Person', optional: true
  has_one :place_rent
  has_one :account
  accepts_nested_attributes_for :owner

  validates :registration_number, :model, :owner, presence: true

  def to_param
    "#{id}-#{model.parameterize}"
  end
end
