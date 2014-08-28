class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.text :title
      t.text :description
      t.text :content
      t.references :owner, index: true

      t.timestamps
    end
  end
end
