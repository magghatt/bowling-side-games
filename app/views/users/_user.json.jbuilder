json.extract! user, :id, :contact_info_id, :login, :password, :first_name, :last_name, :last_login_date, :created_at, :updated_at
json.url user_url(user, format: :json)
