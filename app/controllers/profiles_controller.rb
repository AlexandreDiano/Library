class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]

  def index
    @profiles = Profile.all
    @users = User.all
    @user_types = UserType.all
  end

  def show
  end

  def edit
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profile_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:cpf, :name, :age, :zip_code, :borrows_amount, :borrows_returned, :users_id, :user_types_id)
  end
end
