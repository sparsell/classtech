class RemoveRulesFromChild < ActiveRecord::Migration
  def change
    remove_column :children, :has_limits, :boolean
    remove_column :children, :can_text, :boolean
    remove_column :children, :can_chat, :boolean
    remove_column :children, :soc_media, :boolean
    remove_column :children, :play_games, :boolean
    remove_column :children, :watch_yt, :boolean
  end
end
