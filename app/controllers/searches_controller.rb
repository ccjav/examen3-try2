class SearchesController < ApplicationController
  def new
    @search = Search.new
  end
  def create
    
  end

  def index
    if params[:search][:to] == ("") || params[:search][:from] == ("") || params[:search][:date] == ("")
      flash[:failure] = "Favor de llenar todos los campos"
      redirect_to root_path
    else
      @searches = Flight.where(to: params[:search][:to], from: params[:search][:from], date: params[:search][:date] )    
    end
  end

  def user_params
      params.require(:search).permit(:to, :from, :date)
    end
end
