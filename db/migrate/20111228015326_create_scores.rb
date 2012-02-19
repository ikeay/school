class CreateScores < ActiveRecord::Migration
  def self.up
    create_table :scores do |t|
      t.integer :student_id
      t.integer :course_id
      t.string :score

      t.timestamps
    end
  end

  def self.down
    drop_table :scores
  end
end
