class CreateDataSrcLnks < ActiveRecord::Migration
  def change
    create_table :data_src_lnks do |t|
      t.string :ndbID, null: false
      t.string :nutrID, null: false
      t.string :dataSrcID, null:false
      t.timestamps
    end
  end
end
