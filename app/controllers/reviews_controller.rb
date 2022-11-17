class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    authorize @review
    @event_space = EventSpace.find(params[:event_space_id])
    @review.event_space = @event_space
    @review.user = current_user
    if @review.save
      redirect_to user_dashboard_path, status: :see_other
    else
      render "event_spaces/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
