

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get '/events' do
    events = Event.all
    events.to_json
  end

  # Show route for a specific event
  get '/events/:id' do
    event = Event.find_by(id: params[:id])
    event.to_json
  end

  # Create route for events
  post '/events' do
    event = Event.create(
      title: params[:title],
      description: params[:description],
      start_time: params[:start_time],
      end_time: params[:end_time],
      location: params[:location],
      agenda: params[:agenda]
    )
    event.to_json
  end

  # Update route for events
  patch '/events/:id' do
    event = Event.find_by(id: params[:id])
    event.update(
      title: params[:title],
      description: params[:description],
      start_time: params[:start_time],
      end_time: params[:end_time],
      location: params[:location],
      agenda: params[:agenda]
    )
    event.to_json
  end

  # Delete route for events
  delete '/events/:id' do
    event = Event.find_by(id: params[:id])
    event.destroy
    status 204
  end

  # Get events belonging to a user
  get '/users/:user_id/events' do
    user = User.find_by(id: params[:user_id])
    events = user.events
    events.to_json
  end

  # Get the user associated with an event
  get '/events/:id/user' do
    event = Event.find_by(id: params[:id])
    user = event.user
    user.to_json
  end

  # Get attendees for an event
  get '/events/:id/attendees' do
    event = Event.find_by(id: params[:id])
    attendees = event.attendees
    attendees.to_json
  end

  # Get events for a user
  get '/users/:user_id/events' do
    user = User.find_by(id: params[:user_id])
    events = user.events
    events.to_json
  end

  # Create an attendee for an event
  post '/events/:id/attendees' do
    event = Event.find_by(id: params[:id])
    user = User.find_by(id: params[:user_id])

    attendee = Attendee.create(event: event, user: user name: params[:name], surname: params[:surname], email: params[:email])
    attendee.to_json
  end

  # Update an attendee
  patch '/events/:event_id/attendees/:id' do
    event = Event.find_by(id: params[:event_id])
    attendee = Attendee.find_by(id: params[:id])

    attendee.update(
      event: event
      # You can add more attributes to update here if needed
    )
    attendee.to_json
  end

  # Delete an attendee
  delete '/events/:event_id/attendees/:id' do
    attendee = Attendee.find_by(id: params[:id])
    attendee.destroy
    status 204
  end
end
