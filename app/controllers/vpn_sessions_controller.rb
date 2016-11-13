class VpnSessionsController < ApplicationController
  def show
    @vpnsession = VpnSession.find_by(params[:id])

  end
  def new
    @vpnsession = VpnSession.new
  end
  def create
    @vpnsession = VpnSession.new(vpn_params)
    if @vpnsession.save
      redirect_to account_path
    else
      render :new
    end

  end

  private

  def vpn_params
    params.require(:vpnsession).permit(
        :shared_secret, :server_address, :account_name, :vpn_pw
    )
  end
end
