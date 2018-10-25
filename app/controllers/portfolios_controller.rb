# frozen_string_literal: true

# PortfoliosController
class PortfoliosController < ApplicationController
  layout 'portfolio'
  
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @portfolio_items = Portfolio.angular
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  # CRUD operations
  def create
    @portfolio_item = Portfolio.new(portfolio_parms)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio_item is live now' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @portfolio_item = Portfolio.new(portfolio_parms)

    respond_to do |format|
      if @portfolio_item.update(portfolio_parms)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private

  def portfolio_parms
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
end
