class ClassroomsController < ApplicationController
   def index
      @classrooms = Classroom.order :entry_at

   end

   def new
      @classroom = Classroom.new
      load_students_and_courses
   end

   def create
      @classroom = Classroom.new classroom_params
      @classroom.entry_at = Time.zone.now
      if @classroom.save
         flash[:notice] = "Classroom was successfully created."
			redirect_to classrooms_url
      else
         render :new
      end
   end

   def update
      @classroom = set_classroom_fields
      if @classroom.update classroom_params
         flash[:notice] = "Classroom was successfully updated."
			redirect_to classrooms_url
      else
         render :edit
      end
   end

   def destroy
		id = params[:id]
		Classroom.destroy id
		redirect_to classrooms_url
	end

   def edit
      load_students_and_courses
      set_classroom_fields
   end

   private

   def classroom_params
      params.require(:classroom).permit :student_id, :course_id
   end

   def set_classroom_fields
      id = params[:id]
      @classroom = Classroom.find(id)
   end

   def load_students_and_courses
      @students = Student.all
      @courses = Course.all
   end
end
