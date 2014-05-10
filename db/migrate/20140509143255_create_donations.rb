# -*- encoding : utf-8 -*-
class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :item
      t.date :date
      t.decimal :value
      t.integer :quantity

      t.timestamps
    end
  end
end
