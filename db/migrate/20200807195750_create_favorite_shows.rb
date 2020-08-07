class CreateFavoriteShows < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_shows do |t|

      t.timestamps
    end
  end
end
