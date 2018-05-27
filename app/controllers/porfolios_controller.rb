class PorfoliosController < ApplicationController
    def index
    @porfolio_items = Porfolio.all 
    end
    
    def new
    @porfolio_items = Porfolio.new
    end
    
    def create
    @porfolio_items = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @porfolio_items.save
        format.html { redirect_to porfolios_path, notice: 'Porfolio item is now live.' }
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
        format.html { redirect_to porfolios_path, notice: 'Your portfolio item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
    end
    
    def show
    @porfolio_item = Porfolio.find(params[:id])    
    end

end
