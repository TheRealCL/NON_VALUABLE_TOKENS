class NvtsController < ApplicationController
  before_action :set_nvt, only: %i[show update]

  def index
    @nvts = Nvt.all
  end

  def show
  end

  def new
    @nvt = Nvt.new
  end

  def create
    @nvt = Nvt.new(nvt_params)
    if @nvt.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @nvt.update(nvt_params)
    redirect_to profile_path
  end

  private

  def set_nvt
    @nvt = Nvt.find(params[:id])
  end

  def nvt_params
    params_require(:nvt).permit(:title, :content, :category, :date, :price, photo: [])
  end

end
