class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :user_type, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :user_type, acceptance: { accept: ['Admin', 'Teacher', 'Student'] }

  def admin?
    user_type == 'Admin'
  end

  def not_student?
    user_type != 'Student'
  end
end
