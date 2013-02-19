class AddDoodleFileFields < ActiveRecord::Migration
  def change
    add_attachment :doodles, :image
  end
end
