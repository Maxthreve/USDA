class CreateNutrDefs < ActiveRecord::Migration
  def change
    create_table :nutr_defs do |t|
      t.string :nutrID, null: false
      t.string :units, null: false
      t.string :tagName, null: true
      t.string :nutrDesc, null: false
      t.string :numDec, null: false
      t.string :srOrder, null: false 
      t.timestamps
    end
  end
end
