puts "Cleaning database..."
Registration.destroy_all
Event.destroy_all
User.destroy_all
Category.destroy_all

puts "Creating categories..."
tech = Category.create!(name: "Technology", description: "Coding, AI, and Gadgets")
sports = Category.create!(name: "Sports", description: "Campus leagues and training")
arts = Category.create!(name: "Arts", description: "Music, painting, and theater")

puts "Creating users..."
coni = User.create!(name: "Constanza Campos", email: "coni@eventhub.com", bio: "Web Technologies student")
rene = User.create!(name: "René Montoya", email: "rene@eventhub.com", bio: "Web Technologies student")
student = User.create!(name: "Jane Doe", email: "jane@u.edu")

puts "Creating events..."
e1 = Event.create!(
  title: "Rails Workshop 2026",
  description: "Learn to build apps fast.",
  date: DateTime.now + 7.days,
  location: "Lab 402",
  capacity: 20,
  organizer: coni,
  category: tech,
  status: :published
)

e2 = Event.create!(
  title: "Basketball Finals",
  description: "The big game of the semester.",
  date: DateTime.now + 2.days,
  location: "Main Gym",
  capacity: 100,
  organizer: rene,
  category: sports,
  status: :published
)

puts "Creating registrations..."
Registration.create!(user: student, event: e1, status: :confirmed)
Registration.create!(user: coni, event: e2, status: :confirmed)

puts "Seeds finished! Created #{User.count} users and #{Event.count} events."