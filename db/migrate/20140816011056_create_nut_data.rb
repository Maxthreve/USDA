class CreateNutData < ActiveRecord::Migration
  def change
    create_table :nut_data do |t|
      t.string :ndbID, null: false
      t.string :nutrID, null: false
      t.decimal :nutrVal, null: false, precision: 13, scale: 3
      t.decimal :numDataPts, null: false
      t.decimal :stdError, null: true, precision: 11, scale: 3
      t.string :srcID, null: false
      t.string :deriveID, null: true
      t.string :refNdbID, null: true
      t.string :addNutrIND, null: true
      t.integer :numStudies, null: true
      t.decimal :min, null: true, precision: 13, scale: 3
      t.decimal :max, null: true, precision: 13, scale: 3
      t.decimal :lowEB, null: true, precision: 13, scale: 3
      t.decimal :upEB, null: true, precision: 13, scale: 3
      t.integer :df, null: true
      t.string :addModDate, null: true
      t.string :statCmt, null: true
      t.string :ccIND, null: true
      t.timestamps
    end
  end
end
