class AddSchoolclassidToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :school_class_id, :integer
  end
end
