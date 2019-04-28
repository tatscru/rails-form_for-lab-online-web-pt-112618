class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to post_path(@school_path)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
