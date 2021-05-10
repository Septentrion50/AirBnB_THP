class Listing < ApplicationRecord
  validates :available_beds,
            presence: true,
            numericality: { only_integer: true, greater_than: 0 }

  validates :price,
            presence: true,
            numericality: { only_integer: true, greater_than: 0 }

  validates :description,
            presence: true,
            length: { minimum: 140 }

  validates :welcome_message,
            presence: true

  belongs_to :administrator, class_name: 'User'
  has_many :reservations
  belongs_to :city

  before_validation :overlapping_reservation?

  def overlapping_reservation?
    last = self.reservations.last    
    puts last
    if last.nil?
      false
    end
    self.reservations.each do |r|
      if r.start_date.to_i <= last && last < r.end_date.to_i
        true
      else
        false
      end
    end
  end
end
