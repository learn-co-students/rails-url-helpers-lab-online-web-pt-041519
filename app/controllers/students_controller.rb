class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    #before action
  end

  def activate_student
    set_student     #finds the student
    if @student.active   #sets active studnt to inactive (dflt false)
      @student.active = false
    else
      @student.active = true #sets inactive student to active
    end
    @student.save
    redirect_to student_path(@student) #student show page
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end