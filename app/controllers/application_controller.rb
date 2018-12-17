class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :cart_count
  def cart_count
     if current_user
      @count = current_user.cart_items.length
    end
  end



  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :kana_first_name, :kana_last_name, :nick_name, :postal_code, :address, :phone_number])
  end
end
