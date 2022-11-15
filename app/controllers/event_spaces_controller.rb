class EventSpacesController < ApplicationController
  def index
    @event_spaces = EventSpace.all
  end
end
