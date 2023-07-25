puts "🌱 Seeding spices..."

# Seed your database here
user1 = User.create(name: 'Angela', email: 'angela@example.com')
user2 = User.create(name: 'Tony', email: 'tony@example.com')

# Create events associated with users
event1 = Event.create(
  title: 'Barbie Premier',
  description: 'An enchanting event for the showing of Barbie the movie',
  start_time: Time.now + 1.week,
  end_time: Time.now + 1.week + 3.hours,
  location: 'Wonderland',
  user: user1,
  agendas: ['Red carpet entry', 'Movie screening', 'Themed after-party']
)

event2 = Event.create(
  title: 'Costume Ball',
  description: 'A magical costume ball at the Fairy Palace',
  start_time: Time.now + 2.weeks,
  end_time: Time.now + 2.weeks + 5.hours,
  location: 'Fairy Palace',
  user: user2,
  agendas: ['Red carpet entry', 'Dancing under the stars', 'Best costume competition']
)

event3 = Event.create(
  title: 'Book Club Gathering',
  description: 'A  book club gathering for bookworms',
  start_time: Time.now + 3.weeks,
  end_time: Time.now + 3.weeks + 2.hours,
  location: 'Cozy Library',
  user: user1,
  agendas: ['Book discussion', 'Snacks and refreshments', 'Book exchange']
)

invited_guest1 = InvitedGuest.create(event: event1, user: user2)
invited_guest2 = InvitedGuest.create(event: event2, user: user1)
invited_guest3 = InvitedGuest.create(event: event3, user: user2)

puts "✅ Done seeding!"
