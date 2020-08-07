class AddColumnInFavorite < ActiveRecord::Migration[6.0]
  def change
  	add_column :favorite_shows, :favorite, :boolean, default: true
  	add_reference :favorite_shows, :show, foreign_key: true
  	add_reference :favorite_shows, :user, foreign_key: true

  end
end
