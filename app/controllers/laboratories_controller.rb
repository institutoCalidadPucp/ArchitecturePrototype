class LaboratoriesController < ApplicationController
  layout "admin" 

  before_action :set_laboratory, only: [:edit, :update]

  def index
    @laboratories = Laboratory.all
  end

  def new
    @laboratory = Laboratory.new
  end

  def create
    @laboratory = Laboratory.new laboratory_params
    if @laboratory.save
      redirect_to laboratories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @laboratory.assign_attributes laboratory_params
    if @laboratory.save
      redirect_to laboratories_path, notice: 'Laboratory was successfully updated'
    else
      render :edit
    end
  end

  private
  def laboratory_params
    params.require(:laboratory).permit(:name, :email, :phone, :address)
  end

  def set_laboratory
    @laboratory = Laboratory.find params[:id]
  end


end
