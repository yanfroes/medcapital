class DashboardController < ApplicationController
    before_action :authenticate_user!
    
def index
    @q = Transaction.search(params[:q])
    @transactions = @q.result(distinct: true).order('created_at DESC')
    @total = Transaction.where(kind: "deposit").sum(:value) - Transaction.where(kind: "withdraw").sum(:value)

    @deposits = Transaction.where(kind: "deposit").order('created_at DESC')
    @withdraws = Transaction.where(kind: "withdraw").order('created_at DESC')
end


end