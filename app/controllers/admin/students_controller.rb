class Admin::StudentsController < Admin::BaseController

  def index
    @search = Student.search(params[:search])
    @student = @search.order("created_at desc").page(params[:page])
  end
end
