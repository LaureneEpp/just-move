class TrainersController < ApplicationController

  private

    def trainer_params
      params.require(:trainer).permit(:first_name, :last_name, :phone, :bio, :experience, :user_id)
    end

end
