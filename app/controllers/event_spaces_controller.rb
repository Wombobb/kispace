class EventSpacesController < ApplicationController
  def show
    @event_space = EventSpace.find(params[:id])
  end
end
