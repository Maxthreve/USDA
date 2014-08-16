class CreateDeriveCodes < ActiveRecord::Migration
  def change
    create_table :derive_codes do |t|
      t.string :derivID, null: false
      t.string :deriveDecs, null: false
      t.timestamps
    end
  end
end
