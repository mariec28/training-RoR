class AddBadgeToSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :badged, :text
  end
end
