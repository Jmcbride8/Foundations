class ModelsController < ApplicationController

  before_action :authenticate_user!

  def index
    @models = current_user.models
    if Subscription.where(user_id: @current_user_id).exists?
      @subscription = current_user.subscription.id
    else
      @subscription = "none"
    end
  end

  def new
    @model = Model.new
    @status = "property"
  end

  def create
    puts property_params
    @model = current_user.models.create(property_params)
    if @model.valid?
      redirect_to edit_model_path(@model.id, status: 'financing')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @status = params[:status]
    @model = Model.find(params[:id])
  end

  def update
    @model = Model.find(params[:id])
    @status = params[:status]
    #binding.pry
    if @status == "financing"
      current_model = @model.update(financing_params)
      redirect_to edit_model_path(@model.id, status: 'management')
    elsif @status == "management"
      current_model = @model.update(management_params)
      redirect_to edit_model_path(@model.id, status: 'local economy')
    elsif @status =="local economy"
      current_model = @model.update(local_economy_params)
      redirect_to edit_model_path(@model.id, status: 'national economy')
    elsif @status =="national economy"
      current_model = @model.update(national_economy_params)
      redirect_to models_path
    end
  end


  private


  def property_params
    params.require(:model).permit(:price, :closing_costs, :repair_costs, :after_repair_value, :rent_monthly, :property_upkeep_monthly, :insurance_monthly, :hoa_fees_monthly, :utilities_monthly)
  end
  def financing_params
    params.require(:model).permit(:downpayment_percent, :interest_rate_percent, :property_mortgage_insurance_monthly,:loan_term_length_years)
  end
  def management_params
    params.require(:model).permit(:management_fees_percent, :average_tenant_stay_yrs, :average_vacancy_length_months, :earnings_reinvestment_percent)
  end
  def local_economy_params
    params.require(:model).permit(:value_growth_percent, :property_taxes_percent)
  end
  def national_economy_params
    params.require(:model).permit(:inflation_rate_percent)
  end


end
