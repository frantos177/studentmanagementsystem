class SubjectsController < ApplicationController

	def index
		@subjects = Subject.all
	end

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)
		@subject.save
		redirect_to subjects_path
	end

	def edit
		@subject = Subject.find(params[:id])
	end

	def update
		@subject = Subject.find(params[:id])
		@subject.update_attributes(subject_params)
		redirect_to subjects_path
	end

	def destroy
		Subject.find(params[:id]).destroy
		redirect_to subjects_path
	end

	def show
		@subject = Subject.find(params[:id])
	end

	private 
	def subject_params
		params.require(:subject).permit(:name, :code, :num_units)
	end
end