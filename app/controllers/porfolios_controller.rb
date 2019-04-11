class PorfoliosController < ApplicationController
  def index
    @porfolio_items = Porfolio.all
  end

  def new
    @porfolio_item = Porfolio.new
  end

  def create
    @portfolio_item = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to porfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

end
