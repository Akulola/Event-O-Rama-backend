class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Event Creation
  post '/events' do
    event_data = JSON.parse(request.body.read)
    event = Event.create(event_data)
    event.to_json
  end
  
  # Event Listing
  get '/events' do
    events = Event.all
    events.to_json
  end
  
  # Event Details
  get '/events/:id' do
    event = Event.find(params[:id])
    event.to_json
  end
  
  # Event Deletion
  delete '/events/:id' do
    event = Event.find(params[:id])
    event.destroy
    event.to_json
  end
  
  # Get events belonging to a user
  get '/users/:user_id/events' do
    user = User.find(params[:user_id])
    events = user.events
    events.to_json
  end
  
  # Get the user associated with an event
  get '/events/:event_id/user' do
    event = Event.find(params[:event_id])
    user = event.user
    user.to_json
  end
  
  # Get attendees for an event
  get '/events/:event_id/attendees' do
    event = Event.find(params[:event_id])
    attendees = event.users
    attendees.to_json
  end
  
  # Get events for a user
  get '/users/:user_id/events' do
    user = User.find(params[:user_id])
    events = user.events
    events.to_json
  end
  
  # Create an attendee for an event 
  post '/events/:event_id/attendees' do
    event = Event.find(params[:event_id])
    attendee_data = JSON.parse(request.body.read)
    attendee = event.attendees.create(attendee_data)
    attendee.to_json
  end
  
  # Update an attendee
  put '/attendees/:id' do
    attendee = Attendee.find(params[:id])
    attendee_data = JSON.parse(request.body.read)
    attendee.update(attendee_data)
    attendee.to_json
  end
  
  # Delete an attendee
  delete '/attendees/:id' do
    attendee = Attendee.find(params[:id])
    attendee.destroy
    attendee.to_json
  end

end
