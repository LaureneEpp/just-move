class BookingsController < ApplicationController

  private

    def booking_params
      params.require(:booking).permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :trainer_id, :schedule_id, :lesson_id)
    end

end
