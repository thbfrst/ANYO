class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_order
   before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def current_order
    if current_user.present?
      current_order = current_user.orders.last
      if current_order.present? && !current_order.payed
        @current_order = current_order
        return current_order
      end
    end
    return nil
  end

end
