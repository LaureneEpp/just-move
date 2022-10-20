json.extract! lesson, :id, :title, :duration, :cost, :category, :language, :level, :description, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
