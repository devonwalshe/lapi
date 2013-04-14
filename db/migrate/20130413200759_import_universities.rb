require 'csv'
class ImportUniversities < ActiveRecord::Migration
  def up 
    csv = CSV.read("/users/Azymuth/Documents/Work/TechCube/LJDataJam/Datasets/Cleaning/unistats/INSTITUTION_formatted.csv")
    csv[1..csv.length].each do |row|
      e = Establishment.new
      e.lat = row[8]
      e.long = row[9]
      e.address = row[5]
      e.post_code = row[7]
      e.email = ""
      e.phone = row[6]
      e.education_type = "Higher Education"
      e.website_url = row[4]
      e.official_establishment_uid = row[0]
      e.save
    end      
  end

  def down
  end
end
