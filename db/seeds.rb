# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

task1 = Task.create(name: 'Courses', content:'acheter du dentifrice', status:'false')
task2 = Task.create(name: 'Vacances', content:'prévoir les vacances', status:'false')
task3 = Task.create(name: 'Code', content:'apprendre meteor', status:'false')
