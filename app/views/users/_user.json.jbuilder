json.extract! user, :id, :nombre, :email, :password, :celular, :dni, :direccion, :created_at, :updated_at
json.url user_url(user, format: :json)
