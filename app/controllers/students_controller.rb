class StudentsController < ApplicationController
    before_action :find_student, only: %i[show edit update]

    def new
    end

    def create
      @new = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
      redirect_to @new
    end

    def show
    end

    def edit
    end

    def update
      @student.update(student_params)
      redirect_to @student
    end

    private

    def find_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end
