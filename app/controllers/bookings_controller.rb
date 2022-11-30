class BookingsController < ApplicationController
  # before_action :set_schedule, only: [:new, :create, :update]
  before_action :set_schedule, only: [:new, :create, :destroy]
  before_action :set_booking, only: [:destroy]


  def index
  #   if params[:all]
  #     @bookings = Booking.all
  #   else
  #     @user = User.where("user_id = ?", current_user)
  #     @bookings = current_user.bookings
  #   end
    @bookings = Booking.where(client_id: current_user.client)
  end

  # def show
  #   @booking = @schedule.bookings.new(booking_params)
  #   @booking = Booking.find_by(params[:booking_id][:yoga_class_id])
  # end

  def new
    @booking = @schedule.bookings.build
  end

  def create
    @booking = @schedule.bookings.build(booking_params)
    @booking.schedule = @schedule
    @booking.lesson = @schedule.lesson
    @booking.trainer = @schedule.trainer
    @booking.start = @schedule.start_time
    @booking.client = current_user.client

    if @booking.save
      respond_to do |format|
        format.html { redirect_to schedule_path(@schedule), notice: "Booking was successfully created." }
        format.turbo_stream { flash.now[:notice] = "Booking was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
    redirect_to schedule_path(@schedule)
  end


  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking deleted!'
  end

  private

    def set_schedule
    @schedule = Schedule.find(params[:schedule_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

    def booking_params
      params.require(:booking).permit(:status, :title, :cost, :start, :cancellation_reason, :refunded, :trainer_id, :schedule_id, :lesson_id, :client_id)
    end
end

