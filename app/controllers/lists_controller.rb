class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    # @list = List.find(params[:id])
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
