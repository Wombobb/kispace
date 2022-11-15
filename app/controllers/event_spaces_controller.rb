class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @event_space = EventSpace.find(params[:id])
    @booking = Booking.new
    authorize @event_space
  end

  def index
    @event_spaces = policy_scope(EventSpace)
  end

  def new
    @event_space = EventSpace.new
    authorize @event_space
  end

  def create
    @event_space = EventSpace.new(space_params)
    authorize @event_space
    @event_space.user = current_user
    if @event_space.save!
      redirect_to event_space_path(@event_space)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def space_params
    params.require(:event_space).permit(:name, :location, :description, :user_id)
  end

end
