json.extract! transaction, :id, :value, :bank, :account, :agency, :cpf, :name, :kind, :balance, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
