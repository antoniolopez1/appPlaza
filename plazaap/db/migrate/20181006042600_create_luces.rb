class CreateLuces < ActiveRecord::Migration[5.2]
  def change
    create_table :luces do |t|
      t.integer :perim
      t.integer :inter
      t.integer :park
      t.integer :par_r
      t.integer :par_g
      t.integer :par_b
      t.timestamps
    end
  end
end
