# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
begin
  5.times do |i|
    Board.create(name: "board ##{i+1}")
    2.times do |j|
      Post.create(title: "title for b#{i+1} p#{j+1}", content: "content for board ##{i+1} post ##{j+1}")
    end
  end
  puts "Seed success!"
rescue
  puts "Seed fail!"
  puts Board.errors if Board.errors.any?
  puts Post.errors if Post.errors.any?
end
