class HomeController < ApplicationController

	def index
		if session[:admin_id]
			redirect_to admin_home_path
		else
			redirect_to regists_path
		end
	end
end
