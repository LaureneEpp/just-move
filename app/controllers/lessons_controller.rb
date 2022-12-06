class LessonsController < ApplicationController
    before_action :set_lesson, only: [:like, :show]
    # before_action :authenticate_user!, only: :toggle_favorite

  def index
    @lessons = Lesson.all
  end

  def show
  end

  # def like
  #   Like.create!(client_id: current_user.client.id, lesson_id: @lesson.id)
  #   redirect_to lesson_path(@lesson)
  # end
  private

  def set_lesson
      @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :duration, :cost, :category, :language, :level, :description)
  end
end