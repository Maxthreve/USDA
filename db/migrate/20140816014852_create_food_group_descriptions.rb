class CreateFoodGroupDescriptions < ActiveRecord::Migration
  def change
    create_table :food_group_descriptions do |t|
      t.string :fdGrpID, null: false
      t.string :fdGrpID, null: false
      t.timestamps
    end
  end
end
