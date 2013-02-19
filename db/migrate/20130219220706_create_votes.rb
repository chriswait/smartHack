class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :isVandilism
      t.references :doodle

      t.timestamps
    end
    add_index :votes, :doodle_id
  end
end
