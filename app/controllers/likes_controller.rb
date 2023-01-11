class LikesController < ApplicationController

  def index
    @likes = Like.where(client_id: current_user.client)
  end

  def create
    @like = current_user.client.likes.new(like_params)
    flash[:notice] = @like.errors.full_messages.to_sentence unless @like.save
    redirect_to @like.lesson
  end

  def destroy
    @like = current_user.client.likes.find(params[:id])
    @lesson = params[:lesson_id]
    @like.destroy
    respond_to do |format|
      format.html { redirect_to lesson, notice: "Your like as been deleted." }
      format.turbo_stream
    end
  end

  private

  def like_params
    params.require(:like).permit(:lesson_id)
  end
end