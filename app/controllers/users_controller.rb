class UsersController < ApplicationController
  def edit_profile
  end



  def update_profile
    @user = current_user.update(user_params)
    redirect_to root_path
  end





  private
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:avatar)
  end



end
