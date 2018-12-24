class UsersController < ApplicationController
  
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
    @user = User.find(params[:id])
    @user.destroy
    redirect_to events_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :kana_first_name, :kana_lat_name, :nick_name, :postal_code, :address, :phone_number,:user_image)
  end

end
