class ApplicationController < ActionController::Base
  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end

  if Rails.env.production?
    rescue_from StandardError, with: :generic_json_500
  end

  private def generic_json_500
    render json: { error: "Internal Server Error" }, status: :internal_server_error
  end
end
