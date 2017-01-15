class TransactionsController < ApplicationController
  before_action :set_kid

  # GET /kids/1/transactions
  def index
    @transactions = @kid.transactions.all
    render json: @transactions
  end

  # POST /kids/1/transactions
  def create
    @transaction = @kid.transactions.new(params.require(:transaction).permit(:parent_id, :amount, :note))

    if @transaction.save
      render json: @transaction, status: :created, location: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kids/1/transactions/1
  def destroy
    @transaction = @kid.transactions.find(params[:id])
    @transaction.destroy
  end

  private

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
