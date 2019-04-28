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
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = Post.find(params[:id])

   @school_class.update(post_params(:title))
   redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
