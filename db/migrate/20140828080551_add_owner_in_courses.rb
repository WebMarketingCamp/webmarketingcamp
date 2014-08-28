class AddOwnerInCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :owner, index: true
  end
end
