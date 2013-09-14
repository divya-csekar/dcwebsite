class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.string :artistid

      t.timestamps
    end
  end

  def self.down
    drop_table :albums
  end
end
