json.array!(@schools) do |school|
  json.extract! school, :id, :name, :avatar_url, :overall_rating
  json.url school_url(school, format: :json)
end
