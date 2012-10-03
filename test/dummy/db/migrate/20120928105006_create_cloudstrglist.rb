class CreateCloudstrglist < ActiveRecord::Migration
  def up
    create_table :cloudstrglist do |t|
      t.string :plugin_name

      t.timestamps
    end
  end

  def down
    drop_table :cloudstrglist
  end
end
