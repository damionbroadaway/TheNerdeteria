class MenuItemCatergoriesController < ApplicationController
  before_action :set_menu_item_catergory, only: [:show, :edit, :update, :destroy]

  # GET /menu_item_catergories
  # GET /menu_item_catergories.json
  def index
    @menu_item_catergories = MenuItemCatergory.all
  end

  # GET /menu_item_catergories/1
  # GET /menu_item_catergories/1.json
  def show
  end

  # GET /menu_item_catergories/new
  def new
    @menu_item_catergory = MenuItemCatergory.new
  end

  # GET /menu_item_catergories/1/edit
  def edit
  end

  # POST /menu_item_catergories
  # POST /menu_item_catergories.json
  def create
    @menu_item_catergory = MenuItemCatergory.new(menu_item_catergory_params)

    respond_to do |format|
      if @menu_item_catergory.save
        format.html { redirect_to @menu_item_catergory, notice: 'Menu item catergory was successfully created.' }
        format.json { render :show, status: :created, location: @menu_item_catergory }
      else
        format.html { render :new }
        format.json { render json: @menu_item_catergory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_item_catergories/1
  # PATCH/PUT /menu_item_catergories/1.json
  def update
    respond_to do |format|
      if @menu_item_catergory.update(menu_item_catergory_params)
        format.html { redirect_to @menu_item_catergory, notice: 'Menu item catergory was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_item_catergory }
      else
        format.html { render :edit }
        format.json { render json: @menu_item_catergory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_item_catergories/1
  # DELETE /menu_item_catergories/1.json
  def destroy
    @menu_item_catergory.destroy
    respond_to do |format|
      format.html { redirect_to menu_item_catergories_url, notice: 'Menu item catergory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_item_catergory
      @menu_item_catergory = MenuItemCatergory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_item_catergory_params
      params.require(:menu_item_catergory).permit(:name)
    end
end
