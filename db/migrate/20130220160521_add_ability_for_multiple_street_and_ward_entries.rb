class AddAbilityForMultipleStreetAndWardEntries < ActiveRecord::Migration
  def change
    remove_column :streets, :dog_foul
    remove_column :streets, :vandalism
    remove_column :streets, :graffiti
    remove_column :streets, :weeds
    remove_column :streets, :detritus
    remove_column :streets, :fly_posting
    remove_column :streets, :bin_count
    remove_column :streets, :number_overflowing
    remove_column :streets, :smoking
    remove_column :streets, :drinks
    remove_column :streets, :confectionary
    remove_column :streets, :fast_food
    remove_column :streets, :pedestrian_individual
    remove_column :streets, :business
    remove_column :streets, :domestic
    remove_column :streets, :construction
    remove_column :streets, :animal_faeces
    remove_column :streets, :other
    
  end
end
