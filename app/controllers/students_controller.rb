class StudentsController < ApplicationController

  def index
    students = 
    if params[:name]
      Student.by_name(params[:name])
    else
      Student.all
    end 
    render json: students
  end

  def find_student
    student = Student.find(params[:id])
    render json: student
  end 

  def student_by_name
    student = Student.find(params[:name])
    render json: student
  end 

end
