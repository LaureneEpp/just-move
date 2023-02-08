class TrainersController < ApplicationController
  before_action :set_trainer, only: %i[show edit update]

  def index
    @trainers = User.where(is_trainer: true)
  end

  def show
    @schedules = Schedule.where(trainer_id: @trainer).where('start_time >= ?', Date.today)
    # @schedule = Schedule.new
  end

  def create
    respond_to do |format|
      if @trainer.create(trainer_params)
        format.html { redirect_to @trainer }
        format.turbo_stream
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to @trainer }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
    current_user.update(first_name: current_user.client.first_name, last_name: current_user.client.last_name)
  end

  def list_profile_schedules
    @profile_schedules = Schedule.where(trainer_id: current_user.trainer)
    @upcoming_schedules = Schedule.where(trainer_id: current_user.trainer).where('start_time >= ?', Date.today)
    @previous_schedules = Schedule.where(trainer_id: current_user.trainer).where('start_time < ?', Date.today)
  end

  def list_trainer_schedules
    @trainer_schedules = Schedule.where(trainer_id: @trainer)
  end

  def list_bookings
    @trainer_bookings = Booking.where(trainer_id: current_user.trainer)
    @bookings = Booking.where(trainer_id: current_user.trainer)
  end

  private

  def set_trainer
    @trainer = Trainer.find(params[:id])
  end

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :phone, :bio, :experience, :user_id, :image)
  end
end
