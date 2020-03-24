json.array!(@events) do |event|
json.extract! event
json.title event.name
json.start event.start_date
json.end event.end_date
json.url event_url(event, format: :html)
end
