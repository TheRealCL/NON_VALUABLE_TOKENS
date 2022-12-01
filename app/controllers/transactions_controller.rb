class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]
  before_action :set_nvt, only: :new

  def index
    @transactions = Transaction.where(user_id: current_user.id)
  end

  def show

  end

  def new
    @nvt_owner = @nvt.user
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.nvt = Nvt.find(params[:nvt_id])
    @transaction.user = current_user
    if @transaction.save
      redirect_to transaction_path(@transaction), notice: 'Request done'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to transaction_path(@transaction), notice: 'Transaction was updated.'
    else
      render :edit
    end
  end

  def confirm_status
    set_transaction
    @transaction.update(status_params)
    redirect_to transaction_path(@transaction)
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path, notice: 'Transaction was rejected.'
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def set_nvt
    @nvt = Nvt.find(params[:nvt_id])
  end

  def transaction_params
    params.require(:transaction).permit(:status, :comment)
  end

  def status_params
    params.require(:transaction).permit(:status)
  end
end
