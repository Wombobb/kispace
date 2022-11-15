class EventSpacesController < ApplicationController

  def show
    @event_space = EventSpace.find(params[:id])
    @booking = Booking.new
  end
  def index
    @event_spaces = EventSpace.all
  end
end
