class AddCategoryToLives < ActiveRecord::Migration[7.0]
  def change
    add_reference :lives, :category, null: true, foreign_key: true
  end
end
