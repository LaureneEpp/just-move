class TrainersController < InheritedResources::Base

  private

    def trainer_params
      params.require(:trainer).permit(:first_name, :last_name, :phone, :bio, :experience, :user_id, :account_id)
    end

end
