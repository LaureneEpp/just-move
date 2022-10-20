class SchedulesController < ApplicationController

  private

    def schedule_params
      params.require(:schedule).permit(:title, :start, :end, :trainer_id)
    end

end
