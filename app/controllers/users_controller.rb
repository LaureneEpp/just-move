class UsersController < ApplicationController
  before_action :set_user

  def show
    @client = current_user.client
    @trainer = current_user.trainer
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
