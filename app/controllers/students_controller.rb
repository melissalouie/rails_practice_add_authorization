class StudentsController < ApplicationController

  def index
    redirect_to login_path unless current_student
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
