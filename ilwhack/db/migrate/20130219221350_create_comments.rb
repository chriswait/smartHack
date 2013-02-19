class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :user
      t.references :doodle

      t.timestamps
    end
    add_index :comments, :doodle_id
  end
end
