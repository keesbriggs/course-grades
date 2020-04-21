class Enrollment < ApplicationRecord

  belongs_to :user
  belongs_to :course

  validates :user_id, presence: true
  validates :course_id, presence: true

  validates_uniqueness_of :user_id, scope: :course_id

  validates :score, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100,  only_integer: true }

  def course_name
    Course.find(course_id).name || "None"
  end

    def user_name
    User.find(user_id).name || "None"
  end
end
