class CreateGuideUnits < ActiveRecord::Migration
  def change
    create_table :guide_units do |t|
      t.references :unit, index: true
      t.references :guide, index: true

      t.timestamps
    end
  end
end
