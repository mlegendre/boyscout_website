# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


=begin
  description_arry=[
    'Activity consent form and approval by parents or legal Guardian',
    'Youth Application',
    'Adult Application',
  ]

  form_name=[
    'Permission slip',
    'Youth application',
    'Adult application'
  ]

  link_to_form=%w[
    'permission_slip.pdf',
    'youth_application.pdf',
    'adult_application.pdf'
  ]
=end


Forms.create(description: 'Activity consent form and approval by parents or legal Guardian',name: 'Permission slip',link: 'permission_slip.pdf')
Forms.create(description: 'Youth Application',name: 'Youth application',link: 'youth_application.pdf')
Forms.create(description: 'Adult Application',name: 'Adult application', link: 'adult_application.pdf')