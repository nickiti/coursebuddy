json.extract! course_assignment, :id, :name, :description, :status, :date, :course_id, :created_at, :updated_at
json.url course_assignment_url(course_assignment, format: :json)
