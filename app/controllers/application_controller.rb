class ApplicationController < ActionController::Base
  protect_from_forgery

  include ApplicationHelper

  # before_filter :page_can?
  def clear_session_trace
	  session[:admin_id] = nil
  end
end
