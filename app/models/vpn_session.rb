require "net/http"
require "uri"
class VpnSession < ActiveRecord::Base
  validates :shared_secret, presence: true
  validates :server_address, presence: true
  validates :account_name, presence: true
  validates :vpn_pw, presence: true
end
