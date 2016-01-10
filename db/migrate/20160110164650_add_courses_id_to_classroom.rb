class AddCoursesIdToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :courses_id, :integer
  end
end
