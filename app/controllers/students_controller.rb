class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end
end
