class NvtsController < ApplicationController

  def index
    @nvts = Nvt.all
  end

  def show
    @nvt = nvt.id
  end

  def new

  end

  def create

  end

  def update

  end

end
