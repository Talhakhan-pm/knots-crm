class Agent::LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = current_user.leads.new(user_params)
    if @lead.save
      redirect_to agent_leads_path
    else
      flash.now[:errors]= @lead.errors.full_messages
      render :new
    end
  end


  def edit
    @lead = current_user.leads.find(params[:id])
  end

  def update
    @lead = current_user.leads.find(params[:id])
    if @lead.update(user_params)
      redirect_to agent_lead_path(@lead)
    else
      flash.now[:errors]= @lead.errors.full_messages
      render :edit
    end
  end


  def index
    @leads = current_user.leads.all
  end

  def show
    @lead = current_user.leads.find(params[:id])
  end

  private

  def user_params
    params.require(:lead).permit(
      :provider,
      :full_name,
      :address,
      :phone_number,
      :account_number,
      :bill
    )
  end


end
