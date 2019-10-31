class AddKudosCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kudos_count, :integer, default: 3
  end
end
