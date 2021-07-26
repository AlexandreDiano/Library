json.extract! profile, :id, :cpf, :name, :age, :zip_code, :debit, :borrows_amout, :books_returned, :references, :created_at, :updated_at
json.url profile_url(profile, format: :json)
