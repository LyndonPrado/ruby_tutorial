class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
    @portfolios = Portfolio.all
    #render html: '<div> html goes here </div>'.html_safe
	end

  def list
    @portfolio_items = Portfolio.all
  end
  
  def show
    #render html: '<div> html goes here </div>'.html_safe
    # @portfolio = portfolio_items.find(:all)
    
    # redirect_to action: "../views/index"
   # render html: '../views/portfolios/index.html.erb'}.html_safe
  end

  def new 
    @portfolio = Portfolio.new
  end

  def edit
  end

  def create
  end

end
