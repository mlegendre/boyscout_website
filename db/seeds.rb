# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This will set up the barebones of the badges tables

def badge_creation
badge_location='badge_images'

  badge_images_arry = Dir.glob('public/badge_images/*')
  images = badge_images_arry.map do |i|
    File.basename(i)
  end

  images.each do |j|
    Badge.create(
      name: j.gsub("_badge.jpg","").gsub("_", " ") ,
      link_to_badge_icon: "#{badge_location}/#{j}",
      link_to_badge_pdf_form: j.gsub("_badge.jpg",".pdf").gsub("_", "-"),
      link_to_badge_docx_form: j.gsub("_badge.jpg",".docx").gsub("_", "-"),
      requirements: nil
    )
 end
end

#This will set up the barebones of the forms tables
def forms_creation
  forms_arry = Dir.glob('public/BSA_Forms/*')
  forms = forms_arry.map do |i|
    File.basename(i)
  end

  forms.each do |f|
    Form.create(
      name: f.gsub(".pdf"),
      description: "",
      link: ""
    )
  end
end



badge_creation

