class AddDescriptionToFoodGroupDescription < ActiveRecord::Migration
  def change
    add_column :food_group_descriptions, :desc, :string
  end
end
