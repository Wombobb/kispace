class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @event_spaces = EventSpace.where(user_id: @user)
    authorize @user
    # authorize @event_spaces
  end
end
