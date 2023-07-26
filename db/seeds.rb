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
  user_id: user1.id,
  image_url: 'https://example.com/barbie_premier_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: 'Red carpet entry, Movie screening, Themed after-party'
)

event2 = Event.create(
  title: 'Costume Ball',
  description: 'A magical costume ball at the Fairy Palace',
  start_time: Time.now + 2.weeks,
  end_time: Time.now + 2.weeks + 5.hours,
  location: '1010 Vienna, Bankgasse 8',
  user_id: user2.id,
  image_url: 'https://example.com/costume_ball_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: 'Red carpet entry, Dancing under the stars, Best costume competition'
)

event3 = Event.create(
  title: 'Book Club Gathering',
  description: 'A book club gathering for bookworms',
  start_time: Time.now + 3.weeks,
  end_time: Time.now + 3.weeks + 2.hours,
  location: '1557 Huaihai Zhong Lu, Xuhui District, Shanghai',
  user_id: user1.id,
  image_url: 'https://example.com/book_club_gathering_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: 'Book discussion, Snacks and refreshments, Book exchange'
)

event4 = Event.create(
  title: 'Summer Music Festival',
  description: 'Join us for a fun-filled music festival in the park!',
  start_time: DateTime.new(2023, 8, 15, 12, 0),
  end_time: DateTime.new(2023, 8, 15, 22, 0),
  location: 'Central Park, New York',
  user_id: user2.id,
  image_url: 'https://example.com/summer_music_festival_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: '12:00 PM - Opening Ceremony, 02:00 PM - Live Performances, 08:00 PM - Closing Party'
)

event5 = Event.create(
  title: 'Tech Conference',
  description: 'Discover the latest trends in technology and innovation.',
  start_time: DateTime.new(2023, 9, 20, 9, 0),
  end_time: DateTime.new(2023, 9, 22, 18, 0),
  location: 'Convention Center, San Francisco',
  user_id: user1.id,
  image_url: 'https://example.com/tech_conference_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: '09:00 AM - Registration and Welcome, 11:00 AM - Keynote Speech, 03:00 PM - Breakout Sessions, 06:00 PM - Networking'
)

event6 = Event.create(
  title: 'Art Exhibition',
  description: 'Explore a stunning collection of contemporary art.',
  start_time: DateTime.new(2023, 10, 5, 10, 0),
  end_time: DateTime.new(2023, 10, 7, 20, 0),
  location: 'Art Gallery, London',
  user_id: user2.id,
  image_url: 'https://example.com/art_exhibition_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: '10:00 AM - Gallery Opening, 02:00 PM - Artist Talks, 07:00 PM - Cocktail Reception'
)

event7 = Event.create(
  title: 'Food Festival',
  description: 'Taste the best cuisines from around the world.',
  start_time: DateTime.new(2023, 11, 15, 12, 0),
  end_time: DateTime.new(2023, 11, 17, 22, 0),
  location: 'Fairgrounds, Chicago',
  user_id: user1.id,
  image_url: 'https://example.com/food_festival_image.png',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: '12:00 PM - Food Tasting, 03:00 PM - Cooking Demonstrations, 08:00 PM - Food Awards'
)

attendee1 = Attendee.create(event: event1, user: user2, name: 'Eric', surname: 'Mongare', email: 'eric@example.com')
attendee2 = Attendee.create(event: event2, user: user1, name: 'Rhona', surname: 'Joy', email: 'rhona@example.com')
attendee3 = Attendee.create(event: event3, user: user2, name: 'Mary', surname: 'Mukami', email: 'mary@example.com')
attendee4 = Attendee.create(event: event4, user: user1, name: 'Ruth', surname: 'Osukuku', email: 'ruth@example.com')
attendee5 = Attendee.create(event: event5, user: user2, name: 'Kenneth', surname: 'Wachira', email: 'kenneth@example.com')
attendee6 = Attendee.create(event: event6, user: user1, name: 'Reagan', surname: 'Munene', email: 'reagan@example.com')
attendee7 = Attendee.create(event: event7, user: user2, name: 'Isaac', surname: 'Baraka', email: 'isaac@example.com')
attendee8 = Attendee.create(event: event1, user: user1, name: 'Joy', surname: 'Mvoi', email: 'mvoi@example.com')
attendee9 = Attendee.create(event: event2, user: user2, name: 'Rose', surname: 'Mvoi', email: 'rose@example.com')
attendee10 = Attendee.create(event: event3, user: user1, name: 'Ruth' , surname: 'Onyancha', email: 'onyancha@example.com')
attendee11 = Attendee.create(event: event4, user: user2, name: 'Catherine' , surname: 'Awiti', email: 'catherine@example.com')
attendee12 = Attendee.create(event: event5, user: user1, name: 'Michael', surname: 'Mokua', email: 'mokua@example.com')
attendee13 = Attendee.create(event: event6, user: user2, name: 'Joy', surname: 'Makena', email: 'makena@example.com')
attendee14 = Attendee.create(event: event7, user: user1, name: 'Joshua', surname: 'Munene', email: 'munene@example.com')

puts "✅ Done seeding!"
