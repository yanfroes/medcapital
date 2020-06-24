class DepositsController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json

  def index
    @deposit = Deposit.all

  end

  def new
    @deposit = Deposit.new
    respond_modal_with @deposit
  end

  def create
    @deposit = current_user.deposits.create(deposit_params)
    respond_modal_with @deposit, location: root_path
  end

  private
    def set_deposit
      @deposit = Deposit.find(params[:id])
    end

    def deposit_params
      params.require(:deposit).permit(:user_id, :value, :bank, :acc, :agency, :cpf, :name)
    end
end