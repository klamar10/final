json.extract! user, :id, :nombre, :apellido, :email, :password, :celular, :dni, :direccion, :perfil, :created_at, :updated_at
json.url user_url(user, format: :json)
