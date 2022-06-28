class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # fetch all items from the database
  def index
    @items = Item.all
  end

  # find and show a specific item by id
  def show
    @itemes = Item.find(params[:id])
    @name = @item.warehouse.name
  end

  # The new action instantiates a new item, but does not save it.
  # also provides a list of warehouses to link items to warehouse
  def new
    @item = Item.new
    @warehouses = Warehouse.all
  end

  def edit
    @warehouses = Warehouse.all
  end

  # POST /items or /items.json
  # Save the item and selected warehouse to the database
  def create
    @item = Item.new(item_params)
    @warehouses = Warehouse.all

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item), notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to item_url(@item), notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:item_name, :description, :quantity, :msrp, :wsp, :sku, :warehouse_id)
    end
end
