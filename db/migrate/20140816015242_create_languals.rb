class CreateLanguals < ActiveRecord::Migration
  def change
    create_table :languals do |t|
      t.string :ndbID, null: false
      t.string :factorID, null: false  
      t.timestamps
    end
  end
end
