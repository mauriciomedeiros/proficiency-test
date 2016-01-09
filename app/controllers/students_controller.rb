class StudentsController < ApplicationController
   def index
      @students = Student.order :name
   end

   def new
      @student = Student.new
   end

   def create
      @student = Student.new student_params
      if @student.save
         flash[:notice] = "Student was successfully created."
			redirect_to root_url
      else
         render :new
      end
   end

   def destroy
		id = params[:id]
		Student.destroy id
		redirect_to root_url
	end

   private

   def student_params
      params.require(:student).permit :name, :register_number, :status
   end
end
