class StudentSubjectsController < ApplicationController

	def index
		@student_subjects = StudentSubject.all
	end

	def new
		@student_subject = StudentSubject.new
	end

	def create
		@student_subject = StudentSubject.new(student_subject_params)
		@student_subject.save
		redirect_to student_subjects_path
	end

	def edit
		@student_subject = StudentSubject.find(params[:id])
	end

	def update
		@student_subject = StudentSubject.find(params[:id])
		@student_subject.update_attributes(student_subject_params)
		redirect_to student_subjects_path
	end

	def destroy
		StudentSubject.find(params[:id]).destroy
		redirect_to student_subjects_path
	end

	def show
		@student_subject = StudentSubject.find(params[:id])
	end

	private 
	def student_subject_params
		params.require(:student_subject).permit(:student_id, :subject_id, :date_enrolled, :date_completed, :letter_grade, :numeric_grade)
	end
end