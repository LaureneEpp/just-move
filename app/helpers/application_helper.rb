module ApplicationHelper

  def create_client_and_assign_to_current_user
      if current_user != nil && current_user.client == nil
          client = Client.create!(user: current_user, first_name: current_user.first_name, last_name: current_user.last_name)
      end
  end
end
