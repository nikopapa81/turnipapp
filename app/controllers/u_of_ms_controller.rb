class UOfMsController < ApplicationController
  def index
    @u_of_ms = UOfM.all
  end

  def show
    @u_of_m = UOfM.find(params[:id])
  end

  def new
    @u_of_m = UOfM.new
  end

  def create
    @u_of_m = UOfM.new
    @u_of_m.unit_name = params[:unit_name]

    if @u_of_m.save
      redirect_to "/u_of_ms", :notice => "U of m created successfully."
    else
      render 'new'
    end
  end

  def edit
    @u_of_m = UOfM.find(params[:id])
  end

  def update
    @u_of_m = UOfM.find(params[:id])

    @u_of_m.unit_name = params[:unit_name]

    if @u_of_m.save
      redirect_to "/u_of_ms", :notice => "U of m updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @u_of_m = UOfM.find(params[:id])

    @u_of_m.destroy

    redirect_to "/u_of_ms", :notice => "U of m deleted."
  end
end
