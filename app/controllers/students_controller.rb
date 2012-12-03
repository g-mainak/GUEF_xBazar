class StudentsController < ApplicationController
	def index
		@students = Student.all
	end
	

	def new
		@student = Student.new
	end
	
	def create
		@student = Student.new(params[:student])
		if @student.save
			flash[:success] = "Welcome to GUEF!"
			redirect_to :root
		else
			render 'new'
		end
	end
end