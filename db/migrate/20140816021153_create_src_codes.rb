class CreateSrcCodes < ActiveRecord::Migration
  def change
    create_table :src_codes do |t|
      t.string :srcID, null: false
      t.string :srcDecs, null:false 
      t.timestamps
    end
  end
end
