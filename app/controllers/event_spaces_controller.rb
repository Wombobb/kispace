class EventSpacesController < ApplicationController

  def show
    @event_space = EventSpace.find(params[:id])
  end
  def index
    @event_spaces = EventSpace.all
  end
end
