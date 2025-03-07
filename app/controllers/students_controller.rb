class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name] 
    @student.save 
    # created_at: params[:created_at], updated_at: params[:updated_at])
    redirect_to student_path(@student)
    # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
  end

end
