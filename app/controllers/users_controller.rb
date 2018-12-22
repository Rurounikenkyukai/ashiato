class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if@user.update(user_params)
      redirect_to user_path(@user)
      flash[:success] = "ユーザー情報を更新しました。"
    else
      render :edit
      flash[:danger] = "ユーザー情報の更新に失敗しました。記入内容を確認してください。"
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
