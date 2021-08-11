class LoansController < ApplicationController
  def create_loan
    @loan = Loan.new(params.require(:loan).permit(:profile_id, :books_id))
    @loan.save
  end
end