class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include ApplicationHelper
  before_action :create_trainer_and_assign_to_current_user
end
