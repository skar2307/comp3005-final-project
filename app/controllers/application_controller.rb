class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    home_hub_path
  end
end
