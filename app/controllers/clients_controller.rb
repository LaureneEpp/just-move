class ClientsController < ApplicationController

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :phone, :bio, :users_id)
    end

end
