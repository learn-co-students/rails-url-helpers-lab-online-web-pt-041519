class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def activate
    if @student.active == false
      @student.active = true 
      @student.save
    else
      @student.active = false
      @student.save
    end
    redirect_to student_path(@student)
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end