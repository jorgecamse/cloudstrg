class AddFileRemoteIdToCloudstrgRemoteobjects < ActiveRecord::Migration
  def change
    add_column :cloudstrg_remoteobjects, :file_remote_id, :integer
  end
end
