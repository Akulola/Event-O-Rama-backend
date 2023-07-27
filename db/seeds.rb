puts  "Deleting all seeds"
Event.destroy_all
User.destroy_all
Attendee.destroy_all

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
  image_url: 'https://sportshub.cbsistatic.com/i/2023/04/04/409cb26b-11ca-4fdb-b37c-d62b2cd299ee/fs3whn8akaajf08.jpg?auto=webp&width=1638&height=2048&crop=0.8:1,smart',
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
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGghBzZTamVRJ_B_iBHMdOUuMNzScJ388neg&usqp=CAU',
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
  image_url: 'https://hips.hearstapps.com/hmg-prod/images/shondaland-bookclub-1585947460.jpg?crop=1.00xw:0.502xh;0,0.261xh&resize=1200:*',
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
  image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tastingtable.com%2F693946%2Fsummer-music-festivals-travel%2F&psig=AOvVaw1saLhIeTs5OGiAD8VVGAuX&ust=1690541997164000&source=images&cd=vfe&opi=89978449&ved=0CA4QjRxqFwoTCKiTge_droADFQAAAAAdAAAAABAD',
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
  image_url: 'data:image/jpeg;base64,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',
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
  image_url: 'https://cdn.mens-folio.com/2023/05/Exhibition-view-of-SAM-Contemporaries_-Residues-Remixes-2023-at-SAM-at-Tanjong-Pagar-Distripark.-Image-courtesy-of-Singapore-Art-Museum-scaled.jpg?lossy=1&webp=92&resize=960%2C640&ssl=1',
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
  image_url: 'https://minio.havehalalwilltravel.com/hhwt-upload/images/16012023110038_1661240661930_piff_.original.format-webp.webp',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: '12:00 PM - Food Tasting, 03:00 PM - Cooking Demonstrations, 08:00 PM - Food Awards'
)

event8 = Event.create(
  title: 'Charity Gala Dinner',
  description: 'An elegant charity gala dinner to raise funds for underprivileged children',
  start_time: DateTime.new(2023, 10, 10, 18, 30),
  end_time: DateTime.new(2023, 10, 10, 23, 0),
  location: 'Grand Ballroom, Parkview Hotel, London',
  user_id: user2.id,
  image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fnacephilly.com%2F2019%2F02%2Fnace-members-team-up-for-charity-event%2F&psig=AOvVaw0EnmPXoKZpPFHV1hMddMQw&ust=1690541889408000&source=images&cd=vfe&opi=89978449&ved=0CA4QjRxqFwoTCOC06r3droADFQAAAAAdAAAAABAb',
  created_at: Time.now,
  updated_at: Time.now,
  agenda: 'Cocktail reception, Silent auction, Dinner, Keynote speakers, Entertainment'
)

attendee1 = Attendee.create(event: event1, user: user1, name: 'Eric', surname: 'Mongare', email: 'eric@example.com')
attendee2 = Attendee.create(event: event2, user: user2, name: 'Rhona', surname: 'Joy', email: 'rhona@example.com')
attendee3 = Attendee.create(event: event3, user: user1, name: 'Mary', surname: 'Mukami', email: 'mary@example.com')
attendee4 = Attendee.create(event: event4, user: user2, name: 'Ruth', surname: 'Osukuku', email: 'ruth@example.com')
attendee5 = Attendee.create(event: event5, user: user1, name: 'Kenneth', surname: 'Wachira', email: 'kenneth@example.com')
attendee6 = Attendee.create(event: event6, user: user2, name: 'Reagan', surname: 'Munene', email: 'reagan@example.com')
attendee7 = Attendee.create(event: event7, user: user1, name: 'Isaac', surname: 'Baraka', email: 'isaac@example.com')
attendee8 = Attendee.create(event: event1, user: user1, name: 'Joy', surname: 'Mvoi', email: 'mvoi@example.com')
attendee9 = Attendee.create(event: event2, user: user2, name: 'Rose', surname: 'Mvoi', email: 'rose@example.com')
attendee10 = Attendee.create(event: event3, user: user1, name: 'Ruth' , surname: 'Onyancha', email: 'onyancha@example.com')
attendee11 = Attendee.create(event: event4, user: user2, name: 'Catherine' , surname: 'Awiti', email: 'catherine@example.com')
attendee12 = Attendee.create(event: event5, user: user1, name: 'Michael', surname: 'Mokua', email: 'mokua@example.com')
attendee13 = Attendee.create(event: event6, user: user2, name: 'Joy', surname: 'Makena', email: 'makena@example.com')
attendee14 = Attendee.create(event: event7, user: user1, name: 'Joshua', surname: 'Munene', email: 'munene@example.com')
attendee15 = Attendee.create(event: event8, user: user2, name: 'Joan', surname: 'Kiama', email: 'kimama@example.com')
attendee16 = Attendee.create(event: event8, user: user2, name: 'Mercy',surname: 'Kairuthi', email: 'kairuthi@example.com')

puts "✅ Done seeding!"
