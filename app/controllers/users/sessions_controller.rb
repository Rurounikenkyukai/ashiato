# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
   before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
   def new
     super
   end

  # POST /resource/sign_in
  def create
    if User.find_by(email: params[:user][:email])
      @user = User.find_by(email: params[:user][:email])
      if @user.deleted_at.present?
        redirect_to new_user_session_path
        flash[:danger] = "すでに退会されているユーザーです"
      else
        super
      end
    else
      super
    end
  end

  # DELETE /resource/sign_out
   def destroy
     super
   end

   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
   end
end
