class BookingsController < InheritedResources::Base

  private

    def booking_params
      params.require(:booking).permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :trainer_id, :schedule_id, :lesson_id, :account_id)
    end

end
