class LeadsController < ApplicationController

  respond_to :json

  # GET /leads
  def index
    @leads = Lead.order(:id)
  end

  def show
    @lead = Lead.find params[:id]
  end

  def create
    @lead = current_landing.leads.build params[:lead]
  end

  def update
  end

  def destroy
  end

end
