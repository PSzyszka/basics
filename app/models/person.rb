class Person < ApplicationRecord
  has_many :cars, foreign_key: 'owner_id'
  has_many :parkings
  has_one :account

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
