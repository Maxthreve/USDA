class CreateFoodDescs < ActiveRecord::Migration
  def change
    create_table :food_descs do |t|
      t.string :ndbID, null: false
      t.string :fdGrpID, null: false
      t.string :longDesc, null: false
      t.string :shortDesc, null: false
      t.string :comName, null: true
      t.string :manufacName, null: true
      t.string :surveyIND, null: true
      t.string :refDesc, null: true
      t.integer :refusePCT, null: true
      t.string :sciName, null: true
      t.decimal :nFactor, null:true, precision: 6, scale: 2
      t.decimal :proFactor, null:true, precision: 6, scale: 2
      t.decimal :fatFactor, null:true, precision: 6, scale: 2
      t.decimal :choFactor, null:true, precision: 6, scale: 2
      t.timestamps
    end
  end
end
