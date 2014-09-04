class AddCourseSessionInEnrollments < ActiveRecord::Migration
  def change
    add_reference :enrollments, :course_session, index: true
  end
end
