json.extract! loan, :id, :cpf, :borrow_books, :returned_books, :total_pending, :created_at, :updated_at
json.url loan_url(loan, format: :json)
