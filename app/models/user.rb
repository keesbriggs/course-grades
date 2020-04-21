class User < ApplicationRecord

  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :name, presence: true
  validates :email, presence: true
  validates :user_type, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :user_type, acceptance: { accept: ['Admin', 'Teacher', 'Student'] }

  validates_uniqueness_of :name, scope: [:course_id, :user_type]

  def admin?
    user_type == 'Admin'
  end

  def not_student?
    user_type != 'Student'
  end
end
