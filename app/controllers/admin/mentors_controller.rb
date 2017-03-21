class Admin::MentorsController < Admin::BaseController

  def index
    @search = Mentor.search(params[:search])
    @mentors = @search.order("created_at desc").page(params[:page])
  end

end
