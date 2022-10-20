class LessonsController < InheritedResources::Base
    before_action :set_lesson, only: [:show]

  def index
    # @lessons = Lesson.paginate(:page => params[:page], :per_page => 6).order('sort ASC')
    @lessons = Lesson.all
  end

  def show
      # @others = Lesson.paginate(:page => params[:page], :per_page => 4).order('sort ASC')
    end

  private

  def set_lesson
      @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :duration, :cost, :category, :language, :level, :description)
  end

end
