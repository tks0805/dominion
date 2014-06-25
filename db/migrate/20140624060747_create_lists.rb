class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :card1
      t.integer :card2
      t.integer :card3
      t.integer :card4
      t.integer :card5
      t.integer :card6
      t.integer :card7
      t.integer :card8
      t.integer :card9
      t.integer :card10

      t.timestamps
    end
  end
end
