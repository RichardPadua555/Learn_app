# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'colorize'

puts "Adding Courses".green
Course.create([
                  { code: 'CS100',  name: "B-Tech", description: 'B.Tech is a professional engineering degree' , number_sem: '8' ,status: 'ACTIVE'}, 
                  { code: 'CS101',  name: "BBA", description: 'BBA is a professional degree' , number_sem: '6' ,status: 'ACTIVE'}, 
                  { code: 'CS102',  name: "MSC", description: 'MSC is a professional undergraduate  degree' , number_sem: '6' ,status: 'ACTIVE'}, 
                  { code: 'CS103',  name: "CA", description: 'CA is a professional degree' , number_sem: '10' ,status: 'ACTIVE'}, 
                  { code: 'CS104',  name: "BSC", description: 'BSC is a professional degree' , number_sem: '8' ,status: 'ACTIVE'}, 
                ])
