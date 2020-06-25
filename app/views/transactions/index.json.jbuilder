json.set! :data do
  json.array! @transactions do |transaction|
    json.partial! 'transactions/transaction', transaction: transaction
    json.url  "
              #{link_to 'Show', transaction }
              #{link_to 'Edit', edit_transaction_path(transaction)}
              #{link_to 'Destroy', transaction, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end