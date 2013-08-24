class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :party_admin

      t.timestamps
    end
  end
end
