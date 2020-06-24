class Account < ApplicationRecord
  belongs_to :user
  
  has_many :withdraws
  has_many :deposits
  accept_nested_attributes_for :withdraws
  accept_nested_attributes_for :deposits
end
