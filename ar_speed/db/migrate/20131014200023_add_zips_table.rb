class AddZipsTable < ActiveRecord::Migration
  def change
    create_table :zips do |t|
      t.string  :country
      t.string  :code
      t.string  :place
      t.string  :name1, :limit => 100
      t.string  :code1, :limit => 20
      t.string  :name2, :limit => 100
      t.string  :code2, :limit => 20
      t.string  :name3, :limit => 100
      t.string  :code3, :limit => 20
      t.float   :latitude
      t.float   :longitude
      t.integer :accuracy
    end

  end
end
