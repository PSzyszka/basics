﻿# encoding: utf-8

class Address < ApplicationRecord
  has_one :parking

  validates :city, :street, presence: true
  validates :zip_code, length: { is: 6 }, format: { with: /\d{2}-\d{3}/ }, presence: true

  scope :city, ->(city) { where(city: city) }
end
