class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.datetime :date_of_programme

      t.timestamps
    end
  end
end
