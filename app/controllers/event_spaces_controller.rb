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
    @event_space.user = current_user
    if @event_space.save
      redirect_to event_space_path(@event_space)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    request = params[:search].downcase
    @results = EventSpace.all.where("location ILIKE ?", "%#{request}%")
  end

  private

  def space_params
    params.require(:event_space).permit(:name, :location, :description, :price)
  end


end
