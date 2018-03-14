class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :password_confirmation, :password

  belongs_to :owner, class_name: 'Person', optional: true, foreign_key: :owner_id
  accepts_nested_attributes_for :owner

  validates :email, presence: true
end
