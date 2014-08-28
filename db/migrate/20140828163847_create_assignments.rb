class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :instructions
      t.references :unit, index: true
      t.references :owner, index: true

      t.timestamps
    end
  end
end
