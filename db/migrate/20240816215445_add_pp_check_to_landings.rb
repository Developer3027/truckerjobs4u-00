class AddPpCheckToLandings < ActiveRecord::Migration[7.1]
  def change
    add_column :landings, :pp_check, :boolean, default: true
  end
end
