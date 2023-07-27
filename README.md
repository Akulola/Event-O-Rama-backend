# Event-O-Rama Backend
 ## DESCRIPTION ##
This is the backend server for the Event-O-Rama application, a web app that allows users to create and manage events.
The backend is built using Ruby and Sinatra framework, and it provides RESTful APIs to interact with the database and handle event-related operations.

## Getting Started ##
To run the backend server on your local machine, follow these steps:

Clone the repository: git clone https://github.com/Akulola/event-o-rama-backend.git
Navigate to the project directory: cd event-o-rama-backend
Install dependencies: bundle install
Set up the database: rake db:migrate
Seed the database with sample data: rake db:seed
Start the server: rackup
The backend server should now be running at http://localhost:9292/.

## API Endpoints ##
The backend provides the following API endpoints:

## Events ##
GET /events: Get a list of all events.
GET /events/:id: Get details of a specific event by ID.
POST /events: Create a new event.
DELETE /events/:id: Delete an event by ID.

## Users ##
GET /users: Get a list of all users.
GET /users/:id: Get details of a specific user by ID.

## Attendees ##
GET /events/:id/attendees: Get a list of attendees for a specific event by ID.
POST /events/:id/attendees: Create a new attendee for an event by ID.
DELETE /events/:event_id/attendees/:id: Delete an attendee by ID for a specific event.

## Database Schema ##
The backend uses a SQLite database to store event and user data. The database schema includes the following tables:

events: Stores information about events, including title, description, start time, end time, location, user ID, image URL, created_at, updated_at, and agenda.
users: Stores information about users, including name and email.
attendees: Represents the many-to-many relationship between events and users. It stores the event ID and user ID for each attendee.

## Technologies Used ##
Ruby
Sinatra
SQLite
Contributing
Contributions to the Event-O-Rama backend are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License ##
The Event-O-Rama backend is open-source and available under the MIT License.


