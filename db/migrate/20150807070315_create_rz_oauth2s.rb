class CreateRzOauth2s < ActiveRecord::Migration
  def change
    create_table :rz_oauth2s do |t|
      t.string :code

      t.timestamps null: false
    end
  end
end
