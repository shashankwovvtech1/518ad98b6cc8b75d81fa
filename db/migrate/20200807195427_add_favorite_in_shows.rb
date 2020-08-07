class AddFavoriteInShows < ActiveRecord::Migration[6.0]
  def change
  	add_column :shows, :favorite_show, :boolean, default: false
  	
  end
end
