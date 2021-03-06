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
      redirect_to vpn_sessions_path
    else
      render :new
    end

  end

  private

  def vpn_params
    params.require(:vpn_session).permit(
        :shared_secret, :server_address, :account_name, :vpn_pw
    )
  end
end
