﻿class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_id
      t.string :name
      t.text :text
      t.integer :cost
      t.string :type1
      t.string :type2

      t.timestamps
    end
  end
end
