class RenameIsVandalismColumn < ActiveRecord::Migration
  def change
    rename_column :votes, :isVandilism, :is_vandalism
  end
end
