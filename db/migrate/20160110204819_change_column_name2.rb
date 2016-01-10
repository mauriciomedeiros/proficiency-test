class ChangeColumnName2 < ActiveRecord::Migration
  def change
     rename_column :classrooms, :students_id, :student_id
     rename_column :classrooms, :courses_id, :course_id
  end
end
