class AddPictureToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :picture_data, :binary
    add_column :students, :content_type, :string
  end

  def self.down
    remove_column :students, :content_type
    remove_column :students, :picture_data
  end
end
