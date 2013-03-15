module Cloudstrg
  class Remoteobject < ActiveRecord::Base
    attr_accessible :filehash, :filename, :cloudstrgplugin_id, :user_id, :file_remote_id

    belongs_to :cloudstrgplugin, :class_name => Cloudstrg::Cloudstrgplugin

    belongs_to :user, :class_name => Cloudstrg.user_class

    has_many :gdrivestrgpermissions, :class_name => Gdrivestrg::PermissionId, :dependent => :destroy
  end
end
