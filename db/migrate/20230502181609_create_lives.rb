class CreateLives < ActiveRecord::Migration[7.0]
  def change
    create_table :lives do |t|
      t.string :name
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
