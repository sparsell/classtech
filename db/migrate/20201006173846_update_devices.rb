class UpdateDevices < ActiveRecord::Migration
  def change
    add_column :devices, :child_id, :integer
    add_column :devices, :soc_media, :boolean
    add_column :devices, :play_games, :boolean
    add_column :devices, :can_chat, :boolean
    add_column :devices, :watch_yt, :boolean
  end
end
