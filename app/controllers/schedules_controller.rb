class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = Schedule.where(trainer_id: current_user.trainer)
  end

  def show
  end

  def new
    @schedule = Schedule.new
    @trainer = current_user.trainer
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.trainer = current_user.trainer

    if @schedule.save
      respond_to do |format|
        format.html { redirect_to schedule_path(@schedule), notice: "New schedule was created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  # def update
  #   @schedule.update(schedule_params)
  #   redirect_to schedule_path(@schedule)
  # end

  def destroy
    @schedule.destroy
    redirect_to schedules_path, notice: 'The schedule has been deleted!'
  end

  private

    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:title, :date, :start, :end, :trainer_id)
    end

end
