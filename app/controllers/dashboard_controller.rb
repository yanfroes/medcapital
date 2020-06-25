class DashboardController < ApplicationController
    before_action :authenticate_user!
    
def index
@deposits = Deposit.all.order('created_at DESC')
@withdraws = Withdraw.all.order('created_at DESC')
@total = Deposit.sum(:value) - Withdraw.sum(:value)
@total_that_time = Deposit.sum(:value) - Withdraw.where("created_at < ?", 50.minutes.ago).sum(:value)

@list = (@deposits + @withdraws)

end


end