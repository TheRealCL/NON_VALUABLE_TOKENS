class ProfilesController < ApplicationController
  def show
    @transactions = current_user.transactions
    @nvts = current_user.nvts
  end
end
