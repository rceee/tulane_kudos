class AddFromToKudos < ActiveRecord::Migration[5.2]
  def change
    add_column :kudos, :from_id, :integer
  end
end
