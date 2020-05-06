json.extract! post, :id, :post_typle, :post_url, :posters_id, :created_at, :updated_at
json.url post_url(post, format: :json)
