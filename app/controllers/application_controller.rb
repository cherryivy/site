class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    redirect_to new_session_url, alert: 'Please sign in.' unless current_user
  end

  def limit_to(roles)
    valid_roles = []
    if roles.is_a? Symbol
      valid_roles << roles.to_s.camelize.constantize
    else
      roles.each { |r| valid_roles << r.to_s.camelize.constantize }
    end

    allowed = false
    valid_roles.each { |v| allowed = true if current_user.is_a? v }
    raise ActionController::RoutingError.new('Not Found') unless allowed
  end

end
