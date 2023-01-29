class ApplicationController < ActionController::Base
  
  
  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name_kana, :first_name_kana, :nickname, :age, :address, :gender])
  end
end
