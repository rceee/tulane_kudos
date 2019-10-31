class CreateKudos < ActiveRecord::Migration[5.2]
  def change
    create_table :kudos do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
