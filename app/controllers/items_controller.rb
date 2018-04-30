class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    # まずはストロングパラメータを作る→private
    # 登録前にitemのオブジェクトを作らないといけない
    @item = Item.new(item_params)
    @item.save
    # redirect_to item_path(@item.id)
    # redirect_to item_path(@item)
    redirect_to @item
    # 上記３行は同義、 bin/rails routes　参照
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to "/items/#{@item.id}"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

    def item_params
      # 受け取りたいカラムの内容をここで定義する
      params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
    end

end
