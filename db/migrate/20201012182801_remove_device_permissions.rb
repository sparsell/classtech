class RemoveDevicePermissions < ActiveRecord::Migration
  def change
      remove_column :devices, :limit, :boolean
      remove_column :devices, :can_text, :boolean
      remove_column :devices, :can_chat, :boolean
      remove_column :devices, :soc_media, :boolean
      remove_column :devices, :play_games, :boolean
      remove_column :devices, :watch_yt, :boolean

  end
end
