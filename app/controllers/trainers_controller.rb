class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update]

  def show
  end

  def create
  end

  def edit
  end

  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to @trainer }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
    current_user.update(first_name: current_user.client.first_name, last_name: current_user.client.last_name)
  end

  private

  def set_trainer
    @trainer = Trainer.find(params[:id])
  end

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :phone, :bio, :experience, :user_id)
  end

end


