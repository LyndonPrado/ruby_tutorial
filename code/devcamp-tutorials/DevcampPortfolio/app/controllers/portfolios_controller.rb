class PortfoliosController < ApplicationController
  #before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
	def index
		# @portfolio_items = Portfolio.all
  #   @portfolios = Portfolio.all
  #   #render html: '<div> html goes here </div>'.html_safe
	 #  @default_image = 'http://via.placeholder.com/150C/O'
   # @portfolio_items = Portfolio.where(subtitle: 'Angular');
   # @portfolio_items = Portfolio.angular
    # byebug
   
   @portfolio_items = Portfolio.all
    # binding.pry
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
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
    binding.pry
    
  end

  def new 
    # @portfolio = Portfolio.new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body, technologies_attributes: [:name]))

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

   def destroy
   	# Perform the lookup
   	@portfolio_item = Portfolio.find(params[:id])
    
    # Destroy/delete the record 
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end

    private

    def portfolio_params 
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body,
                                        :image,
                                        technologies_attributes: [:name])
    end

    def set_portfolio_item
       byebug
      @portfolio_item = Portfolio.find(params[:id])
    end
  end
 

end
