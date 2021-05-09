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

  def overlapping_reservation?(datetime)
    reservations.each do |r|
      if r.start_date.to_i <= datetime.to_i && datetime.to_i < r.end_date.to_i
        true
      else
        false
      end
    end
  end
end
