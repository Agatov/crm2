class LeadsController < ApplicationController

  respond_to :json
  before_filter :find_lead, only: [:edit, :update, :destroy]

  # GET /leads
  def index
    if params[:status_id]
      @leads = current_landing.leads.with_status params[:status_id]
    else
      @leads = Lead.order(:id)
    end
  end

  def show
    @lead = Lead.find params[:id]
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = current_landing.leads.build lead_params

    if @lead.save
      redirect_to leads_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lead.update_attributes lead_params
      redirect_to lead_path(@lead)
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy
    redirect_to leads_path
  end

  private

  def find_lead
    @lead = Lead.find params[:id]
  end

  def lead_params
    params.require(:lead).permit(:name, :phone, :email, :status_id)
  end

end
