class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :ndbID, null: false
      t.string :seq, null: false
      t.decimal :amount, null: false, precision: 8, scale: 3
      t.string :msreDesc, null: false
      t.decimal :gmWgt, null: false, precision: 8, scale: 1
      t.integer :numDataPts, null: true
      t.decimal :stdDev, null: true, precision: 10, scale: 3
      t.timestamps
    end
  end
end
