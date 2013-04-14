# namespace :import do
#   desc "Import courses"
#   task :courses, [csv_file_location, columns_array] => :environment do |t, args|
#     @working_file = CSV.open(args.csv_file_location)
#     @working_file.each do |row|
#       # import each row into a course object
#       Course.new(
#         :name => row[args.columns_array[0]],
#         :cost => row[args.columns_array[1]],
#         :requirements => row[args.columns_array[2]],
#         :course_code => row[args.columns_array[3]],
#         :start_date => row[args.columns_array[4]],
#         :end_date => row[args.columns_array[5]],
#         :scqf_level => row[args.columns_array[6]],
#         :qualification_type => row[args.columns_array[7]],
#         :pt_ft => row[args.columns_array[8]],
#         :education_type => row[args.columns_array[9]]
#       )
#     end
#     
#   end 
#   
#   task :establishment, [csv_file_location, columns_array]  do |t, args|
#     @working_file = CSV.open(args.csv_file_location)
#     
#     @working_file.each do |row|
#       # import each row into an establishment object
      # Establishment.new(
      #  :name => row[columns_array[0]].strip,
      #  :lat => row[columns_array[1]].strip,
      #  :long => row[columns_array[2]].strip,
      #  :address => row[columns_array[3]].strip,
      #  :post_code => row[columns_array[4]].strip,
      #  :email => row[columns_array[5]].strip,
      #  :phone => row[columns_array[6]].strip,
      #  :type => row[columns_array[7]].strip,
      #  :website_url => row[columns_array[8]].strip,
      #  :official_provider_uid => row[columns_array[9]].strip
      # ) 
#       
#     end
#     
#   end
# 
# end 
