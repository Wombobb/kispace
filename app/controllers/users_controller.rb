class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @event_spaces = EventSpace.where(user_id: @user)
    authorize @user
    # authorize @event_spaces
  end

  def edit
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      redirect_to user_dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo, :f_name, :l_name)
  end
end
