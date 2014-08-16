class CreateDataSrcLnks < ActiveRecord::Migration
  def change
    create_table :data_src_lnks do |t|

      t.timestamps
    end
  end
end
