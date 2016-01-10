class AddStudentsIdToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :students_id, :integer
  end
end
