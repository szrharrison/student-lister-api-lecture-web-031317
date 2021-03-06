class Api::V1::StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create(student_params)
    render json: student
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
