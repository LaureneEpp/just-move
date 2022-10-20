class SchedulesController < InheritedResources::Base

  private

    def schedule_params
      params.require(:schedule).permit(:title, :start, :end, :trainer_id, :account_id)
    end

end
