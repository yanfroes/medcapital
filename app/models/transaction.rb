class Transaction < ApplicationRecord
    belongs_to :user, optional: true
    enum kind: [:deposit, :withdraw]

    def total_when_deposit
      balance + value
    end

    def total_when_withdraw
      balance - value
    end

    def value_total_in_time
        Transaction.where(kind: "deposit").sum(:value) - Transaction.where(kind: "withdraw").sum(:value)
    end

    def date
      created_at.strftime("%m/%d/%Y - %T") 
    end
end
