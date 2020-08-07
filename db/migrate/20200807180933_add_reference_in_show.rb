class AddReferenceInShow < ActiveRecord::Migration[6.0]
  def change
  	add_reference :shows, :channel, foreign_key: true
  end
end
