class RemoveCourseIdInEnrollments < ActiveRecord::Migration
  def change
    remove_column :enrollments, :course_id
  end
end
