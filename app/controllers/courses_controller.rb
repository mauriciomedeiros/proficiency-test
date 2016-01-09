class CoursesController < ApplicationController
   def index
      @courses = Course.order :name
   end

   def new
      @course = Course.new
   end

   def create
      @course = Course.new course_params
      if @course.save
         flash[:notice] = "Course was successfully created."
			redirect_to root_url
      else
         render :new
      end
   end

   def destroy
		id = params[:id]
		Course.destroy id
		redirect_to root_url
	end

   def edit
      set_course_fields
   end

   private

   def course_params
      params.require(:course).permit :name, :description, :status
   end

   def set_course_fields
      id = params[:id]
      @course = Course.find(id)
   end
end