class EventSpacesController < ApplicationController

  def show
    @event_space = EventSpace.find(params[:id])
    @booking = Booking.new
  end
  def index
    @event_spaces = EventSpace.all
  end

  def new
    @event_space = EventSpace.new
  end

  def create
    @event_space = EventSpace.new(space_params)
    if @event_space.save
      redirect_to event_space_path(@event_space)
    else
      render status: :unprocessable_entity
    end
  end

  private

  def space_params
    params.require(:event_space).permit(:name, :location, :description, :user_id)
  end

end
