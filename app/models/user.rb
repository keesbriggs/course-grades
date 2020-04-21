class User < ApplicationRecord

  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :name, presence: true
  validates :email, presence: true
  validates :user_type, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :user_type, acceptance: { accept: ['Teacher', 'Student'] }

  validates_uniqueness_of :name, scope: :user_type

  def teacher?
    user_type == 'Teacher'
  end

end
