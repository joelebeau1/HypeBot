class CreateHypes < ActiveRecord::Migration
  def change
    create_table :hypes do |t|
      t.integer :user_id, null: false
      t.string :compliment, null: false

      t.timestamps(null: false)
    end
  end
end
