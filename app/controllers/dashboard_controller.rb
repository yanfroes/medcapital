class DashboardController < ApplicationController
    before_action :authenticate_user!
    
def index
@transactions = Transaction.all.order('created_at DESC')
@total = Transaction.where(kind: "deposit").sum(:value) - Transaction.where(kind: "withdraw").sum(:value)


end


end