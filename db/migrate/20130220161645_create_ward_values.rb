class CreateWardValues < ActiveRecord::Migration
  def change
    create_table :ward_values do |t|
      t.datetime :recorded
      t.references :ward
      t.float :value

      t.timestamps
    end
    add_index :ward_values, :ward_id
  end
end
