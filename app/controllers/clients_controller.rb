class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :phone, :bio, :user_id, :account_id)
    end

end
