class UsersController < ApplicationController
  before_action :set_user

  def show
    @client = current_user.client
    @trainer = current_user.trainer
    @upcoming_schedules = Schedule.where(trainer_id: @trainer).where('start_time >= ?', Date.today)
    @previous_schedules = Schedule.where(trainer_id: @trainer).where('start_time < ?', Date.today)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
