class CreateCourseUnits < ActiveRecord::Migration
  def change
    create_table :course_units do |t|
      t.integer :rank
      t.string :status
      t.references :course, index: true
      t.references :unit, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
