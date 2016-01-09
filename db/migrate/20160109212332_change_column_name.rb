class ChangeColumnName < ActiveRecord::Migration
  def change
     rename_column :courses, :descrition, :description
  end
end
