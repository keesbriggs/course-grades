class AddScoreToEnrollment < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :score, :integer, null: false, default: 0
  end
end
