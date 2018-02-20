require 'bcrypt'

class Account < ApplicationRecord
  include BCrypt

  belongs_to :owner, class_name: 'Person', optional: true
  accepts_nested_attributes_for :owner

  validates :email, :password_digest, presence: true
  # has_secure_password


  # :before_filter :authenticate

  def self.authenticate(email, password)
    account = Account.find_by(email: email)
    return nil if account.nil?

    password_1 = Password.new(account.password_digest)

    if password == password_1
      account
    end
  end
end
