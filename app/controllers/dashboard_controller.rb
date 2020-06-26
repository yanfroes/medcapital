class DashboardController < ApplicationController
    before_action :authenticate_user!
    
def index
    @q = Transaction.search(params[:q])
    @transactions = @q.result(distinct: true).where(user_id: current_user.id).order('created_at DESC')
    @total = Transaction.where(kind: "deposit").sum(:value) - Transaction.where(kind: "withdraw").sum(:value)

    @deposits = Transaction.where(kind: "deposit", user_id: current_user.id).order('created_at DESC')
    @withdraws = Transaction.where(kind: "withdraw", user_id: current_user.id).order('created_at DESC')
end


end