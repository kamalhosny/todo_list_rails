class ItemsController < ApplicationController
  def index
    # byebug
    # @items= current_user.items
    @items= Item.all
    respond_to do |format|
      format.json {render :json =>@items}
    end
  end


  def update
    # byebug
    @item = Item.find params[:id]
    @item.update! item_params
    respond_to do |format|
      format.json {render :json =>@item}
    end
  end

  def create
    @item=Item.new item_params
    @item.save!
    respond_to do |format|
      format.json {render :json =>@item}
    end
  end

  def destroy
    @item=Item.find params[:id]
    @item.destroy!
    respond_to do |format|
      format.json {render :json =>@item}
    end
  end

  private
	def item_params
		params.require(:item).permit(:content, :user_id, :done)
	end
end
