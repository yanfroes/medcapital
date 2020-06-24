class WithdrawsController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json

  def new
    @withdraw = Withdraw.new
    respond_modal_with @withdraw
  end

  def create
    @withdraw = current_user.withdraws.create(withdraw_params)
    respond_modal_with @withdraw, location: root_path
  end

  private
    def set_withdraw
      @withdraw = Withdraw.find(params[:id])
    end

    def withdraw_params
      params.require(:withdraw).permit(:user_id, :value, :name, :bank, :agency, :cpf, :acc)
    end
end