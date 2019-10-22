class Reservation < ApplicationRecord
  belongs_to :movie
  validate :count_reservation

  private

  def count_reservation
    errors.add(:count_reservations, "can't be greater than 10") if movie.reservations.count > 10
  end
end
