class CreateLangDescs < ActiveRecord::Migration
  def change
    create_table :lang_descs do |t|
      t.string :factorID, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
