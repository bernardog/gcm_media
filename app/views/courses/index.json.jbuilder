json.array!(@courses) do |course|
  json.extract! course, :id, :first_unity, :second_unity, :third_unity, :status
  json.url course_url(course, format: :json)
end
