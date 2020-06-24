class Deposit < ApplicationRecord
    validates :value, presence: true
    belongs_to :user, optional: true
end
