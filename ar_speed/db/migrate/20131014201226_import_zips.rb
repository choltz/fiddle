require "csv"

class ImportZips < ActiveRecord::Migration
  def up
    i=1

    CSV.foreach("#{Rails.root}/tmp/GB_full.csv", :headers => true, :col_sep => "\t") do |row|
      Zip.create!  :country   => row[0],
                   :code      => row[1],
                   :place     => row[2],
                   :name1     => row[3],
                   :code1     => row[4],
                   :name2     => row[5],
                   :code2     => row[6],
                   :name3     => row[7],
                   :code3     => row[8],
                   :latitude  => row[9],
                   :longitude => row[10],
                   :accuracy  => row[11]

      puts i
      i += 1
    end
  end

  def down
    ActiveRecord::Base.connection.execute "delete from zips;"
  end
end
