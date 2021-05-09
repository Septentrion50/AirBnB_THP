class AlterReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :listing, foreign_key: true
  end
end
