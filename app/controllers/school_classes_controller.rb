class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save
    redirect_to post_path(@school_path)
  end

  # @school_class = SchoolClass.new(post_params)
  #   @school_class.save
  #   redirect_to school_class_path(@school_class)

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
