json.extract! recommendation, :id, :title, :creator, :media, :description, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)
