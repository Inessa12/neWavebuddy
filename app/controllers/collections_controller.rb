class CollectionsController < ApplicationController

  def index
     logger.info " index of collection"
  end

  def new
    @item = Item.new
    @image = @item. images.build
  end

  def create
    @item  = Collection::add_item params[:item], params[:date][:year]
    render :action => 'new'  unless   @item.valid?
    if  @item.valid?
      flash[:notice] = 'Item was successfully created.'
      redirect_to collection_path
    end
  end

  def edit

  end


  def show
    letter = cookies[:letter] || 'A'
    @items = get_collection letter, params[:page]
  end

  def update_list_items_by_alphabet
    cookies[:letter] =  params[:letter]   
    @items = get_collection params[:letter]
  end


  private

  def get_collection sort_letter  , page = '1'
    Collection::items_list sort_letter , page
  end  
end
