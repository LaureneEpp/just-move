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
      redirect_to schedule_path(@schedule)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @schedule.update(schedule_params)
    redirect_to schedule_path(@schedule)
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_path, notice: 'The schedule has been deleted!'
  end

  private

    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:title, :start, :end, :trainer_id)
    end

end
