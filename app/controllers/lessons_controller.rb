class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.all
    @like = Like.where(lesson_id: @lesson)
  end

  def show; end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :duration, :cost, :category, :language, :level, :description)
  end
end
