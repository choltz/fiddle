class GetZipsData < ActiveRecord::Migration
  def up
    system "cd #{Rails.root}/tmp; wget http://download.geonames.org/export/zip/GB_full.csv.zip"
    system "cd #{Rails.root}/tmp; unzip #{Rails.root}/tmp/GB_full.csv.zip"
  end
end
