# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

user1 = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
user2 = User.create(name: 'Jane Smith', email: 'jane@example.com', password: 'password')
user3 = User.create(name: 'Alice Johnson', email: 'alice@example.com', password: 'password')
user4 = User.create(name: 'Bob Brown', email: 'bob@example.com', password: 'password')
user5 = User.create(name: 'Emma Wilson', email: 'emma@example.com', password: 'password')

tag1 = Tag.create(name: 'Tag 1')
tag2 = Tag.create(name: 'Tag 2')
tag3 = Tag.create(name: 'Tag 3')
tag4 = Tag.create(name: 'Tag 4')
tag5 = Tag.create(name: 'Tag 5')

post1 = Post.create(title: 'Post 1', content: 'This is the content of Post 1.', user: user1)
post1.tags << tag1

post2 = Post.create(title: 'Post 2', content: 'This is the content of Post 2.', user: user2)
post2.tags << tag2

post3 = Post.create(title: 'Post 3', content: 'This is the content of Post 3.', user: user3)
post3.tags << tag3

post4 = Post.create(title: 'Post 4', content: 'This is the content of Post 4.', user: user4)
post4.tags << tag4

post5 = Post.create(title: 'Post 5', content: 'This is the content of Post 5.', user: user5)
post5.tags << tag5


post6 = Post.create(title: 'Post 6', content: 'This is the content of Post 6.', user: user1)
post6.tags << tag2

post7 = Post.create(title: 'Post 7', content: 'This is the content of Post 7.', user: user2)
post7.tags << tag3

post8 = Post.create(title: 'Post 8', content: 'This is the content of Post 8.', user: user3)
post8.tags << tag4

post9 = Post.create(title: 'Post 9', content: 'This is the content of Post 9.', user: user4)
post9.tags << tag5

post10 = Post.create(title: 'Post 10 by Emma', content: 'This is the content of Post 10.', user: user5)
post10.tags << tag1

