puts  "Deleting all seeds"
    Event.delete_all
    User.delete_all
    Attendee.delete_all

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
  location: 'Los Angeles, California',
  agenda: ['Red carpet entry', 'Movie screening', 'Themed after-party']
)

event2 = Event.create(
  title: 'Costume Ball',
  description: 'A magical costume ball at the Fairy Palace',
  start_time: Time.now + 2.weeks,
  end_time: Time.now + 2.weeks + 5.hours,
  location: '1010 Vienna, Bankgasse 8',
  agenda: ['Red carpet entry', 'Dancing under the stars', 'Best costume competition']
)

event3 = Event.create(
  title: 'Book Club Gathering',
  description: 'A  book club gathering for bookworms',
  start_time: Time.now + 3.weeks,
  end_time: Time.now + 3.weeks + 2.hours,
  location: '1557 Huaihai Zhong Lu, Xuhui District, Shanghai',
  agenda: ['Book discussion', 'Snacks and refreshments', 'Book exchange']
)

event4 = Event.create(
    title: 'Summer Music Festival',
    description: 'Join us for a fun-filled music festival in the park!',
    start_time: DateTime.new(2023, 8, 15, 12, 0),
    end_time: DateTime.new(2023, 8, 15, 22, 0),
    location: 'Central Park, New York',
    agenda: '12:00 PM - Opening Ceremony\n02:00 PM - Live Performances\n08:00 PM - Closing Party'
)

event5 = Event.create(
    title: 'Tech Conference',
    description: 'Discover the latest trends in technology and innovation.',
    start_time: DateTime.new(2023, 9, 20, 9, 0),
    end_time: DateTime.new(2023, 9, 22, 18, 0),
    location: 'Convention Center, San Francisco',
    agenda: '09:00 AM - Registration and Welcome\n11:00 AM - Keynote Speech\n03:00 PM - Breakout Sessions\n06:00 PM - Networking'
  )

event6 = Event.create(
    title: 'Art Exhibition',
    description: 'Explore a stunning collection of contemporary art.',
    start_time: DateTime.new(2023, 10, 5, 10, 0),
    end_time: DateTime.new(2023, 10, 7, 20, 0),
    location: 'Art Gallery, London',
    agenda: '10:00 AM - Gallery Opening\n02:00 PM - Artist Talks\n07:00 PM - Cocktail Reception'
  )

event7 = Event.create(
    title: 'Food Festival',
    description: 'Taste the best cuisines from around the world.',
    start_time: DateTime.new(2023, 11, 15, 12, 0),
    end_time: DateTime.new(2023, 11, 17, 22, 0),
    location: 'Fairgrounds, Chicago',
    agenda: '12:00 PM - Food Tasting\n03:00 PM - Cooking Demonstrations\n08:00 PM - Food Awards'
  )

attendee1 = Attendee.create(event: event1, user: user2)
attendee2 = Attendee.create(event: event2, user: user1)
attendee3 = Attendee.create(event: event3, user: user2)
attendee4 = Attendee.create(event: event1, user: user1)
attendee5 = Attendee.create(event: event1, user: user2)
attendee6 = Attendee.create(event: event2, user: user1)
attendee7 = Attendee.create(event: event2, user: user2)

puts "✅ Done seeding!"
