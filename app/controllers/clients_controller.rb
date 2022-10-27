class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update]

  def show
  end

  def create
  end

  def edit
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
    current_user.update(first_name: current_user.client.first_name, last_name: current_user.client.last_name)
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone, :bio, :user_id)
  end
end
