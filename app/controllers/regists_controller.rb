class RegistsController < ApplicationController

	def index

	end

	def new
		@mentor = Mentor.new
		@student_a = Student.new
		@student_b = Student.new
	end

	def create
		@mentor = Mentor.new(params[:mentor])
		@student_a = Student.new(params[:student_a])
		@student_b = Student.new(params[:student_b])
		if @mentor.save
			@student_a.mentor_id = @mentor.id
			@student_b.mentor_id = @mentor.id
			if @student_a.save && @student_b.save
				redirect_to root_url, alert: "提交成功！"
			else
				redirect_to :back, alert: "学生信息提交失败！"
			end
		else
			render 'new'
		end
	end

	def show

	end

	def get_declare
		@declare = Declare.first
	end

end
