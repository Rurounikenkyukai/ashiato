class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User was successfully updated."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to events_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_lat_name, :nick_name, :postal_code, :address, :phone_number,:user_image)
  end

end
