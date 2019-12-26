class ProductCategoriesController < ApplicationController


  def index
  @productC = ProductCategory.all
  end

  def show
 @productC = ProductCategory.find(params[:id])
  end
  def new
     @productC = ProductCategory.new
   end

   def edit
     @productC = ProductCategory.find(params[:id])

   end

   def update
     @productC = ProductCategory.find(params[:id])
     if @productC.update(product_params)
       redirect_to  product_categories_path
     else
       render :new

     end
   end

   def destroy
     @productC = ProductCategory.find(params[:id])
     @productC.destroy
     redirect_to  product_categories_path
   end


  def create
    @productC = ProductCategory.new(product_params)
    if @productC.save
      redirect_to product_categories_path
    else
      render :new
  end
end
private def product_params
  params.require(:product_category).permit(:name)
end
end
