class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :name
      t.string :postcode
      t.float :latitude
      t.float :longitude
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
      t.references :ward

      t.timestamps
    end
    add_index :streets, :ward_id
  end
end
