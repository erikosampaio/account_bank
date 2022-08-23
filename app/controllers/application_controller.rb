class ApplicationController < ActionController::Base
  before_action :set_global_params

  protected
    def set_global_params
      $username = params
    end
end
