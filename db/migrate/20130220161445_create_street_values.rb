class CreateStreetValues < ActiveRecord::Migration
  def change
    create_table :street_values do |t|
      t.datetime :recorded
      t.references :street
      t.float :dog_foul
      t.float :vandalism
      t.float :graffiti
      t.float :weeds
      t.float :detritus
      t.float :fly_posting
      t.float :bin_count
      t.float :number_overflowing
      t.float :smoking
      t.float :drinks
      t.float :confectionary
      t.float :fast_food
      t.float :pedestrian_individual
      t.float :business
      t.float :domestic
      t.float :construction
      t.float :animal_faeces
      t.float :other

      t.timestamps
    end
    add_index :street_values, :street_id
  end
end
