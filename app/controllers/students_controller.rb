class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to students_path
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update_attributes(student_params)
		redirect_to students_path
	end

	def destroy
		Student.find(params[:id]).destroy
		redirect_to students_path
	end

	def show
		@student = Student.find(params[:id])
	end

	private 
	def student_params
		params.require(:student).permit(:first_name, :last_name, :middle_name, :date_of_birth, :address, :student_number, :contact_number, :email)
	end
end