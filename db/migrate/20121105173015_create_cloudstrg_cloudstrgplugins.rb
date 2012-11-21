class CreateCloudstrgCloudstrgplugins < ActiveRecord::Migration
  def change
    create_table :cloudstrg_cloudstrgplugins do |t|
      t.string :plugin_name
      t.string :version

      t.timestamps
    end
  end
end
