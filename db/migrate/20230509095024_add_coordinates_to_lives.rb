class AddCoordinatesToLives < ActiveRecord::Migration[7.0]
  def change
    add_column :lives, :latitude, :float
    add_column :lives, :longitude, :float
  end
end
