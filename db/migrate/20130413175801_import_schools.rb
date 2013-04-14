require 'csv'
class ImportSchools < ActiveRecord::Migration
  def up
    columns_array = [3, 19, 20, 16, 18, 4, 6, 17, 5, 2]    
    csv = CSV.read("/users/Azymuth/Documents/Work/TechCube/LJDataJam/Datasets/Cleaning/scotxed/education_centres_ll_formatted.csv")

    csv.each do |row|
    e = Establishment.new
    e.establishment_name = row[columns_array[0]]
    e.lat = row[columns_array[1]]
    e.long = row[columns_array[2]]
    e.address = row[columns_array[3]]
    e.post_code = row[columns_array[4]]
    e.email = row[columns_array[5]]
    e.phone = row[columns_array[6]]
    e.education_type = row[columns_array[7]]
    e.website_url = row[columns_array[8]]
    e.official_establishment_uid = row[columns_array[9]]
    e.save
    end
  
  end

  def down
    Establishment.delete_all
  end
end
