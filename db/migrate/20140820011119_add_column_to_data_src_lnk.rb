class AddColumnToDataSrcLnk < ActiveRecord::Migration
  def change
    add_column :data_src_lnks, :ndbID, :string
    add_column :data_src_lnks, :nutrID, :string
    add_column :data_src_lnks, :dataSrcID, :string


  end
end
