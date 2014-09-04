class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.text :content
      t.string :status
      t.references :question, index: true

      t.timestamps
    end
  end
end
