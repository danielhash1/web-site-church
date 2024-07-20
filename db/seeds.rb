# Clear existing data
User.destroy_all
Blog.destroy_all
Video.destroy_all

# Create Users
users = User.create!([
  { first_name: 'Admin', last_name: 'User', email: 'admin@example.com', password: 'password' },
  { first_name: 'Regular', last_name: 'User', email: 'user@example.com', password: 'password' }
])

# Create Blogs
blogs = Blog.create!([
  { title: 'Tech Blog', description: 'All about the latest in technology', user: users[0] },
  { title: 'Travel Blog', description: 'Travel stories and tips', user: users[1] }
])

# Create Videos
Video.create!([
  { title: 'First Tech Video', description: 'Content of the first tech video', blog: blogs[0], user: users[0] },
  { title: 'Second Tech Video', description: 'Content of the second tech video', blog: blogs[0], user: users[0] },
  { title: 'First Travel Video', description: 'Content of the first travel video', blog: blogs[1], user: users[1] },
  { title: 'Second Travel Video', description: 'Content of the second travel video', blog: blogs[1], user: users[1] }
])

puts "Seed data created successfully!"
