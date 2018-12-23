class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :success, :danger
  protect_from_forgery with: :exception
  
  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :kana_first_name, :kana_last_name, :nick_name, :postal_code, :address, :phone_number])
end
end
