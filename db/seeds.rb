# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

badge_location='badge_images'

  badge_images_arry = Dir.glob('public/badge_images/*')
  images = badge_images_arry.map do |i|
    File.basename(i)
  end

images.each do |j|
Badges.create(
    name: j.gsub("_badge.jpg","").gsub("_", " ") ,
    link_to_badge_icon: "#{badge_location}/#{j}",
    link_to_badge_form: j.gsub("_badge.jpg",".pdf").gsub("_", "-"),
    requirements: nil
)
end

=begin
badge_location='badge_images'
PDF_FILLER=".pdf"

badge_images_arry = Dir.glob('public/badge_images/*')
images = badge_images_arry.map do |i|
  File.basename(i)
end

images.each do |j|

      name=j.gsub("_badge.jpg","").gsub("_", " ") ,
      link_to_badge_icon="#{badge_location}/#{j}",
      link_to_badge_form=j.gsub("_badge.jpg",".pdf").gsub("_", "-")

      puts "#{name}"
      puts "#{link_to_badge_icon}"
      puts "#{link_to_badge_form}"

end
=end
