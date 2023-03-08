# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if User.count.zero?
  3.times do |i|
    User.create(first_name: "Jhon#{i}", last_name: "Doe#{i}")
  end
end

if Book.count.zero?
  3.times do |i|
    Book.create(title: "Book N° #{i+1}")
  end
end

if Review.count.zero?
  12.times do |i|
    book = Book.find(Book.ids.sample)
    user = User.find(User.ids.sample)
    Review.create(user: user, book: book, content: "Some random content n°#{i}")
  end
end
