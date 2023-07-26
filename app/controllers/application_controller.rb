class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Events CRUD

  get '/events' do
    events = Event.all
    events.to_json
  end

  get '/events/:id' do
    event = Event.find_by(id: params[:id])
    event.to_json
  end

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

  delete '/events/:id' do
    event = Event.find_by(id: params[:id])
    event.destroy
  end

  # Attendees CRUD

  get '/attendees/:id' do
    attendee = Attendee.find_by(id: params[:id])
    attendee.to_json
  end

  post '/attendees' do
    attendee = Attendee.create(
      name: params[:name],
      surname: params[:surname],
      email: params[:email]
    )
    attendee.to_json
  end

  delete '/attendees/:id' do
    attendee = Attendee.find_by(id: params[:id])
    attendee.destroy
  end

  # Get attendees for a specific event

  get '/events/:id/attendees' do
    event = Event.find_by(id: params[:id])
    attendees = event.attendees
    attendees.to_json
  end

  # Get events for a specific attendee

  get '/attendees/:id/events' do
    attendee = Attendee.find_by(id: params[:id])
    events = attendee.events
    events.to_json
  end


  get '/users' do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find_by(id: params[:id])
    user.to_json
  end

  

  # Get events for a specific user

  get '/users/:id/events' do
    user = User.find_by(id: params[:id])
    events = user.events
    events.to_json
  end
end
