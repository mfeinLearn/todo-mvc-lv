class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB
    # render 'lists/index.html.erb'
  end

  def show
    # I need to load the list
    # Which list?

    # have all of the data passed by the user
    @list = List.find(params[:id])
  end

  def create
    #raise params.inspect
    @list = List.new
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_path(@list)
  end

  def list_params # strong parameters
    params.require(:list).permit(:name)
  end

end
# instance variable permiates from the controller action
# which is a method in a class to these erb through some magic

# Any time the user passes you data it will be in the
# params hash
