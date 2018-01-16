class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_url
    else
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      redirect_to companies_url
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
  end

  def add_founder
    @company = Company.find(params[:id])
    @founder = @company.founders.new(founder_params)
    if @founder.save
      redirect_to company_url(params[:id])
    end
  end

  def add_category
    @company = Company.find(params[:id])
    @category = @company.categories.new(category_params)
    if @category.save
      redirect_to company_url(params[:id])
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :city, :state, :founded_on, :description)
  end
  def founder_params
    params.require(:founder).permit(:fullname, :title, :company_id)
  end
  def category_params
    params.require(:category).permit(:name, :company_id)
  end
end
