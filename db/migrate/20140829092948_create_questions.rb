class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.text :instructions
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
