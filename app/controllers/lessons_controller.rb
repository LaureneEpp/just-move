class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.all
    @likes = Like.where(client_id: current_user.client).sort_by { |like| like.lesson.title }
  end

  def show
    # @schedules = Schedule.where(lesson_id: @lesson)
    @upcoming_schedules = Schedule.where(lesson_id: @lesson).where('start_time >= ?', Date.today)
    @previous_schedules = Schedule.where(lesson_id: @lesson).where('start_time < ?', Date.today)
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :duration, :cost, :category, :language, :level, :description)
  end
end
