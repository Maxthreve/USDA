class CreateFootnotes < ActiveRecord::Migration
  def change
    create_table :footnotes do |t|
      t.string :ndbID, null: false
      t.string :footntID, null: false
      t.string :footntType, null: false
      t.string :nutrID, null: true
      t.string :footntText, null: false
      t.timestamps
    end
  end
end
