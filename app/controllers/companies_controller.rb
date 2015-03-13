class CompaniesController < ApplicationController
  def index
  		@companys = Company.all
      
      @companys.each do |company|
        if company.id == 4 
          @company_map = company
        end
      end
  end
  def show
  	   @company = Company.find(params[:id])

  end

  def new
  end

  def edit
  end
end
