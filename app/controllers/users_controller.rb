class UsersController < ApplicationController
  before_action :check_login

  def check_login
    redirect_to logout_path if current_user.deleted_at.present?
  end
  
  def show
    @carts = CartItem.where(user_id: current_user.id)
    @user = User.find(params[:id])
    if @user.id != current_user.id
    redirect_to events_path
    flash[:danger] = "ERROR!このページにアクセスする権限がありません。"
    end
  end

  def edit
    @carts = CartItem.where(user_id: current_user.id)
    @user = User.find(params[:id])
    if current_user.admin

    elsif @user.id != current_user.id
    flash[:danger] = "ERROR!このページにアクセスする権限がありません。"
    redirect_to events_path
    end
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
    user = User.find(params[:id])
    user.deleted_at = DateTime.now
    user.save
    if current_user.admin?
      redirect_to admin_path(current_user.id)
    else
      redirect_to user_path(user.id)
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_lat_name, :nick_name, :postal_code, :address, :phone_number,:user_image)
  end

end
