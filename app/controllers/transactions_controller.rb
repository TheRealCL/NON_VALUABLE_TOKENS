class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show update destroy]

  def index
    @transactions = Transaction.all
  end

  def show
  end

  def new
    @nvt = Nvt.find(set_nvt)
    @nvt_user = @nvt.user
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.nvt = Nvt.find(set_nvt)
    @transaction.user = current_user
    if @transaction.save
      redirect_to profile_path, notice: 'Request done'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to profile_path, notice: 'Transaction was successfully updated.'
    else
      render profile_path
    end
  end

  def destroy
    @transaction.destroy
    redirect_to profile_path, notice: 'Transaction was successfully deleted.'
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
end
