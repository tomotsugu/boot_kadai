json.extract! bs_blog, :id, :title, :email, :content, :created_at, :updated_at
json.url bs_blog_url(bs_blog, format: :json)
