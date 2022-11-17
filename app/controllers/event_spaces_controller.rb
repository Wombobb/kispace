class EventSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]

  def show
    @event_space = EventSpace.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    authorize @event_space
    @markers =
      [{
        lat: @event_space.geocode[0],
        lng: @event_space.geocode[1],
        info_window: render_to_string(partial: "info_window", locals: {space: @event_space}),
        image_url: helpers.asset_url("/app/assets/images/logo.png")
      }]
  end

  def index
    if params[:search].present?
      sql_query = "location ILIKE :q OR description ILIKE :q"
      @event_spaces = policy_scope(EventSpace.all.where(sql_query, q: "%#{params[:search]}%"))
    else
      @event_spaces = policy_scope(EventSpace)
    end
    @markers = @event_spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window: render_to_string(partial: "info_window", locals: {space: space}),
        image_url: helpers.asset_url("/app/assets/images/logo.png")
      }
    end
    authorize @event_spaces
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
    params.require(:event_space).permit(:name, :location, :description, :price, photos: [])
  end

end
