class TransactionsController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json

  def new_deposit
    @transaction = Transaction.new
    respond_modal_with @transaction
  end

  def new_withdraw
    @transaction = Transaction.new
    respond_modal_with @transaction
  end

  def create
    @transaction = current_user.transactions.create(transaction_params)
    respond_modal_with @transaction, location: root_path
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:value, :bank, :account, :agency, :cpf, :name, :kind, :balance, :date)
    end
end
