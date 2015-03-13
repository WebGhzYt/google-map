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
    @company = Company.new
  end
  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end


  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
        # if update is successful
    else 
        # if update is unsuccessful
    end
    redirect_to @company
end

  private

  def company_params
    params.require(:company).permit(:name, :lat, :lng)
  end


end


