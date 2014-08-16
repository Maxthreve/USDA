class CreateDataSrcs < ActiveRecord::Migration
  def change
    create_table :data_srcs do |t|
      t.string :dataSrcID, null: false
      t.string :authors, null: true
      t.string :title, null: false
      t.string :year, null: true
      t.string :journal, null: true
      t.string :volCity, null: true
      t.string :issueState, null: true
      t.string :startPage, null: true
      t.string :endPage, null: true
      t.timestamps
    end
  end
end
