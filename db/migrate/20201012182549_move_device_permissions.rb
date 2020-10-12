class MoveDevicePermissions < ActiveRecord::Migration
  def change
        remove_column :devices, :limits, :boolean
        remove_column :devices, :can_text, :boolean
        remove_column :devices, :can_chat, :boolean
        remove_column :devices, :soc_media, :boolean
        remove_column :devices, :play_games, :boolean
        remove_column :devices, :watch_yt, :boolean
  end
    
  def change
        add_column :children, :has_limits, :boolean
        add_column :children, :can_text, :boolean
        add_column :children, :can_chat, :boolean
        add_column :children, :soc_media, :boolean
        add_column :children, :play_games, :boolean
        add_column :children, :watch_yt, :boolean
  end
end
  