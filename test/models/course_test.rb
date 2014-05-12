require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "status should be 'aprovado' if average >= 5" do
    @course = courses(:approved)
    @course.save
    assert_equal @course.status, 'aprovado'
  end

  test "status should be 'em recuperação' if 3 <= average < 5" do
    @course = courses(:retake)
    @course.save
    assert_equal @course.status, 'em recuperação'
  end

  test "status should be 'reprovado' if average < 3" do
    @course = courses(:failed)
    @course.save
    assert_equal @course.status, 'reprovado'
  end
end
