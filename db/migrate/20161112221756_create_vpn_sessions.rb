class CreateVpnSessions < ActiveRecord::Migration
  def change
    create_table :vpn_sessions do |t|
      t.string :shared_secret
      t.string :server_address
      t.string :account_name
      t.string :vpn_pw

      t.timestamps null: false
    end
  end
end
