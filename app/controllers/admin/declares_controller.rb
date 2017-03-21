class Admin::DeclaresController < Admin::BaseController
  def index
    @search = Declare.search(params[:search])
    @declares = @search.order("created_at desc").pagr(params[:page])
  end

  def show
    @declare = Declare.find(params[:id])
  end

  def new
    @declare = Declare.new
  end

  def create
    @declare = Declare.new(params[:declare])
    if @declare.save
      redirect_to @declare
    else
      redirect_to action[:new]
    end
  end

  def edit
    @declare = Declare.find(params[:id])
  end

  def update
    @declare = Declare.update(params[:declare])
    if @declare.update
      redirect_to @declare
    else
      redirect_to action[:edit]
  end

  def destroy
    @declare = Declare.find(params[:id])
    @declare.destroy
    if @declare.update
      redirect_to declares_path
    else
      redirect_to declares_path
  end
end
