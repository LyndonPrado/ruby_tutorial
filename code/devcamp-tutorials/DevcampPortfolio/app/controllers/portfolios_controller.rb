class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
    @portfolios = Portfolio.all
    #render html: '<div> html goes here </div>'.html_safe
	  @default_image = 'http://via.placeholder.com/150C/O'
  end

  def list
    @portfolio_items = Portfolio.all
  end
  
  def show
    # render html: '<div> html goes here </div>'.html_safe
    # @portfolio = portfolio_items.find(:all)
    
    # redirect_to action: "../views/index"
   # render html: '../views/portfolios/index.html.erb'}.html_safe
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new 
    @portfolio = Portfolio.new
    @portfolio_item = Portfolio.new
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html {redirect_to portfolios_path, notice: "The record successfully updated."}
      else
        format.html { render :edit}
      end
    end
  end
 

end
