class Admin::PromotionsController < Admin::BaseController

  def index
    @promotions = Promotions.find(:all)
  end

  def destroy
    promotion = Promotions.find(params[:id])
    promotion.destroy
    redirect_to :action => "index"
  end

  def new
    @promotion = Promotions.new
    @products = Product.find(:all)
  end

  def create
    Promotions.create(params[:promotion])
    redirect_to :action => "index"
  end

end