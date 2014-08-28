class AddOwnerInCourses < ActiveRecord::Migration
  def change
    add_column :courses, :owner, :string
  end
end
