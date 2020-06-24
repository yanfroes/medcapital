class Withdraw < ApplicationRecord
    validates :value, presence: true
    validates :name, presence: true
    validates :bank, presence: true
    validates :acc, presence: true
    validates :agency, presence: true
    validates :cpf, presence: true
    belongs_to :user, optional: true
end
