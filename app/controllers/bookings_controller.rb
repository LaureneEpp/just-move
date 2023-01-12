class BookingsController < ApplicationController

  def index
    #   if params[:all]
    #     @bookings = Booking.all
    #   else
    #     @user = User.where("user_id = ?", current_user)
    #     @bookings = current_user.bookings
    #   end
    @bookings = Booking.where(client_id: current_user.client)
  end

  def create
    @booking = current_user.client.bookings.new(booking_params)
    flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
    redirect_to @booking.schedule
  end

  def destroy
    @booking = current_user.client.bookings.find(params[:id])
    @schedule = params[:schedule_id]
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to schedule, notice: 'Your booking as been deleted.' }
      format.turbo_stream
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :schedule_id,
                                    :trainer_id, :lesson_id, :client_id)
  end
end
