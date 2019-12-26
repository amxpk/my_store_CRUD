class ProductsController < ApplicationController
  def index
  @producT = Product.all
  end

  def show
    @producT = Product.find(params[:id])
  end
  def new
     @producT = Product.new
   end
def edit
  @producT = Product.find(params[:id])
end

def update
  @producT = Product.find(params[:id])
  if @producT.update(producT_params)
    redirect_to products_path
  else
    render :new

  end
end

def destroy
  @producT = Product.find(params[:id])
  @producT.destroy
  redirect_to products_path
end

  def create
    @producT = Product.new(producT_params)
    if @producT.save
      redirect_to products_path
    else
      render :new
  end
end
private def producT_params
  params.require(:product).permit(:name,:quantity,:product_category_id)
end
end
