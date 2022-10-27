# frozen_string_literal: true
class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # before_action :set_lesson, only: [:new]
  # GET /resource/sign_in
  # def new
  #   super
    # @client = Client.new
    # @booking = Booking.new
    # @schedules = Schedule.where('start >= ? and start <=  ?', Date.today + 1.day, Date.today + 2.weeks).where(title: 'Available').order('start ASC').all
  # end

  # POST /resource/sign_in
  # def create
    # super
    # respond_to do |format|
    #   if @user.save
    #     create_client_profile
    #     create_client_booking
    #     format.html { redirect_to dashboard_url, notice: 'Your account was successfully created.' }
    #     format.json { render :show, status: :created, location: @user }
    #   else
    #     format.html { redirect_back fallback_location: root_path, alert: 'An error occurred while sending this request.' }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def set_lesson
  #   @lesson = Lesson.find(params[:lesson_id])
  # end

  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end


# def create_client_profile
#   @client = Client.new()
#   @client.firstname = params[:user][:client][:firstname]
#   @client.lastname = params[:user][:client][:lastname]
#   @client.phone = params[:user][:client][:phone]
#   @client.user_id = @user.id
#   @client.save
# end

# def create_client_booking
#   @lesson = Lesson.find(params[:user][:booking][:lesson_id])
#   @booking = Booking.new()
#   @booking.lesson_id = params[:user][:booking][:lesson_id]
#   @booking.schedule_id = params[:user][:booking][:schedule_id]
#   @booking.client_id = @client.id
#   @booking.title = @lesson.title
#   @booking.cost = @lesson.cost
#   @booking.status = 'Booked'
#   @booking.save
#   @schedule = Schedule.find(params[:user][:booking][:schedule_id])
#   @booking.trainer_id = @schedule.trainer_id
#   @booking.start = @schedule.start
#   @booking.refunded = 0
#   @booking.save
#   @schedule.title = 'Booked'
#   @schedule.save
# end
end
