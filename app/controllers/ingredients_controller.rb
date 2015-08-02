class IngredientsController < ApplicationController

  def index
  	@ingredients = Ingredient.all()
    @locations = Location.all()
  end

  def new
    @ingredient = Ingredient.new
    @categories = Category.all
    @category = Category.find(params[:category_id])
  end

  def create
	  @ingredient = Ingredient.new(ingredient_params)
  	if @ingredient.save
  		flash[:notice] = "+ ITEM ADDED"
  		  redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @locations = Location.all
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @locations = Location.all
    @location = Location.find(params[:location_id])
    @sublocations = Location.where(parent_id: @location.id)
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      flash[:notice] = "LOCATION SET"
      redirect_to root_path
    else
      render :edit
    end
  end

  def expiring_soon
    @ingredients = Ingredient.order(expiring_at: :asc).limit(50)
  end

  def unarranged
    @ingredients = Ingredient.all
  end

  private

  def ingredient_params
  	params.require(:ingredient).permit(:location_id, :category_id, :quantity, :lifespan)
  end

end
