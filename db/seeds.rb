# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.create( username: 'hasan', fullname: 'Hasan Ozovali', email: 'hasan@gmail.com',
    password: 'aaaaaa', password_confirmation: 'aaaaaa' )

Tag.create( name: 'rails')
    

6.times do 
    user = User.first
    project = user.projects.new(title: 'lorem', live_link: 'lorem', source_link: 'lorem')
    project.save
    cover_image = URI.open("#{Rails.root}/app/assets/images/project1.png")
    project.project_image.attach(io: cover_image, filename: "cover_image")
    3.times do 
        project.tags << Tag.first 
    end
   
  end