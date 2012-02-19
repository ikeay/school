class AddGradeToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :grade, :integer
  end

  def self.down
    remove_column :students, :grade
  end
end
