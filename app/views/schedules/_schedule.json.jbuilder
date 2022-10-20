json.extract! schedule, :id, :title, :start, :end, :trainer_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
