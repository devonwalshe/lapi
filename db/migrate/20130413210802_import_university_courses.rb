require 'csv'
class ImportUniversityCourses < ActiveRecord::Migration
  def up
    csv = CSV.read("/users/Azymuth/Documents/Work/TechCube/LJDataJam/Datasets/Cleaning/unistats/scottish_courses.csv")
    csv.each do |row|
      c = Course.new
      c.title = row[4]
      e = Establishment.where(:official_establishment_uid => row[1])
      c.establishment_id = e.first.id 
      c.scqf_level = "7-10"
      c.qualification_type = "Higher Education"
      c.save 
    end
  end

  def down
  end
end
