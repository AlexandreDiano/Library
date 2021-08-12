class ProfilesChangesController < ApplicationController
  before_action :set_profile
  def index
    @profiles = Profile.all
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_path, notice: "User was successfully updated." }
        format.json { redirect_to profiles_path, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_profile
    @profile = Profile.find(params[:id])
  end
  def profile_params
    params.require(:profile).permit(:user_type_id)
  end
end
