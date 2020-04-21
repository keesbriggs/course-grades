class AddScoreToEnrollment < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :score, :integer
  end
end
