class CreateCloudstrglists < ActiveRecord::Migration
  def up
    create_table :cloudstrglists do |t|
      t.string :plugin_name

      t.timestamps
    end
  end

  def down
    drop_table :cloudstrglists
  end
end