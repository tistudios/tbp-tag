json.extract! post, :id, :title, :hosting, :background, :age, :can_travel, :category, :location, :posted, :body_type, :content, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
