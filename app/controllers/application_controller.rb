class ApplicationController < ActionController::Base

  def not_found(message = '')
    raise ActionController::RoutingError.new(message)
  end

end
