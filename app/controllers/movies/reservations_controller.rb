module Movies
  class ReservationsController < BaseController
    before_action :load_reservation, only: %w(update show destroy)

    def index
      @reservations = @movie.reservations
      render json: @reservations
    end

    def show
      render json: @reservation
    end

    def create
      @reservation = @movie.reservations.new(reservation_params)
      if @reservation.save
        render json: @reservation
      else
        render json: @reservation,
               status: :method_not_allowed,
               errors: @reservation.errors.details
      end
    end

    def update
      if @reservation.update(reservation_params)
        render json: @reservation
      else
        render json: @reservation,
               status: :method_not_allowed,
               errors: @reservation.errors.details
      end
    end

    def destroy
      render json: @reservation.destroy
    end

    private

    def reservation_params
      params.require(:reservation)
        .permit(
          :email,
          :name,
          :identification,
          :reservation_date
        )
    end

    def reservation_id
      params.require(:id)
    end

    def load_reservation
      @reservation = @movie.reservations.find(reservation_id)
    end
  end
end
