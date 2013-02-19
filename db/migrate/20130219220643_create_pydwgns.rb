class CreatePydwgns < ActiveRecord::Migration
  def change
    create_table :pydwgns do |t|
      t.string :name
      t.float :value
      t.float :latitude
      t.float :longitude
      t.references :ward

      t.timestamps
    end
    add_index :pydwgns, :ward_id
  end
end
