class CreateStudentAnswers < ActiveRecord::Migration
  def change
    create_table :student_answers do |t|
      t.text :content
      t.references :question, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
