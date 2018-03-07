class Account < ApplicationRecord
  attr_accessor :password_confirmation, :password

  belongs_to :owner, class_name: 'Person', optional: true, foreign_key: :owner_id
  accepts_nested_attributes_for :owner

  validates :email, presence: true

  # has_secure_password

  def self.authenticate(email, password)
    find_by(email: email).try(:authenticate, password)
  end
end
