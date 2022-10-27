class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update]

  def show
  end

  def create
  end

  def edit
  end

  def update
    current_user.client.update(client_params)
    if @client.save
      respond_to do |format|
        format.html { redirect_to client_path(@client), notice: "Your profile have been updated" }
        format.turbo_stream
      end
      else
        render :edit, status: :unprocessable_entity
      end
    current_user.update(first_name: current_user.client.first_name, last_name: current_user.client.last_name)
  end

  private

  def set_client
    @client = Client.find(params[:id])
    # @client = current_user.client
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone, :bio, :user_id)
  end
end
