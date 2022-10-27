class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include ApplicationHelper
  after_action :create_client_and_assign_to_current_user, only: [:create]
end
