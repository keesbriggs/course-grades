class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments

  validates :name, presence: true
  validates :teacher_id, presence: true
  validates :name, uniqueness: true

  def teacher
    User.where(id: teacher_id).first.name
  end
end
