class CreateMentorReviews < ActiveRecord::Migration
  def change
    create_table :mentor_reviews do |t|
      t.text :content
      t.references :student_answer, index: true

      t.timestamps
    end
  end
end
