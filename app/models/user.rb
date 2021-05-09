class User < ApplicationRecord
  validates :email,
            presence: true,
            format: { with: /\A([a-zA-Z0-9._-]+)@([a-zA-Z0-9.-]+)\.([a-z]+)\z/,
                      message: 'must be a valid email' },
            uniqueness: true

  validates :phone_number,
            presence: true,
            format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/,
                      message: 'please enter a valid french number' }

  has_many :listings, foreign_key: 'administrator', class_name: 'Listing'
  has_many :reservations, foreign_key: 'guest', class_name: 'Reservation'
end
