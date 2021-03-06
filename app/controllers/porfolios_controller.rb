class PorfoliosController < ApplicationController
  def index
    @porfolio_items = Porfolio.all.order(:id)
  end

  def new
    @porfolio_item = Porfolio.new
    3.times { @porfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body, 
      technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to porfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @porfolio_item = Porfolio.find(params[:id])
  end

  def update
    @porfolio_item = Porfolio.find(params[:id])

    respond_to do |format|
      if @porfolio_item.update(params.require(:porfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to porfolios_path, notice: 'porfolio_item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @porfolio_item = Porfolio.find(params[:id])
  end

  def destroy
    @porfolio_item = Porfolio.find(params[:id])

    @porfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to porfolios_url, notice: 'Blog was successfully destroyed.' }
    end
  end
end
