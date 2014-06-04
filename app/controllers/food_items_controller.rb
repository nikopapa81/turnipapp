class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.all
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new
    @food_item.item_name = params[:item_name]
    @food_item.uofm_id = params[:uofm_id]
    @food_item.category_id = params[:category_id]
    @food_item.avg_exp_days = params[:avg_exp_days]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])

    @food_item.item_name = params[:item_name]
    @food_item.uofm_id = params[:uofm_id]
    @food_item.category_id = params[:category_id]
    @food_item.avg_exp_days = params[:avg_exp_days]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_item = FoodItem.find(params[:id])

    @food_item.destroy

    redirect_to "/food_items", :notice => "Food item deleted."
  end
end
