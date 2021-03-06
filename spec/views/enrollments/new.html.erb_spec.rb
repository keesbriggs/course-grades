require 'rails_helper'

RSpec.describe "enrollments/new", type: :view do
  before(:each) do
    assign(:enrollment, Enrollment.new(
      :user_id => 1,
      :course_id => 1
    ))
  end

  it "renders new enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollments_path, "post" do

      assert_select "input[name=?]", "enrollment[user_id]"

      assert_select "input[name=?]", "enrollment[course_id]"
    end
  end
end
