class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
      t.float :latitude
      t.float :longitude
      t.references :street

      t.timestamps
    end
    add_index :doodles, :street_id
  end
end
