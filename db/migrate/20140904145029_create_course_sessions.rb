class CreateCourseSessions < ActiveRecord::Migration
  def change
    create_table :course_sessions do |t|
      t.datetime :starting_date
      t.datetime :ending_date
      t.references :course, index: true

      t.timestamps
    end
  end
end
