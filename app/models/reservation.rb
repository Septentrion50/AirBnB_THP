class Reservation < ApplicationRecord

  validates :start_date, :end_date,
            presence: true
            #format: { with: /\A\d{4}-\d{2}-\d{2} [0-2][0-9]:[0-5][0-9]:[0-5][0-9]\z/,
                      #message: 'Please enter a date : YYYY-mm-DD HH:MM:SS' }

  belongs_to :guest, class_name: 'User'
  belongs_to :listing

  before_create :start_must_be_before_end

  # methodes d'instance
  def duration
    result = end_date.to_i - start_date.to_i
    result / 60 / 60 / 24
  end

  private

  def start_must_be_before_end
    errors.add(:start_date, 'must be before end date') unless
      start_date < end_date
  end

end
