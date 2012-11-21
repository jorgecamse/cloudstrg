module Cloudstrg
  class Remoteobject < ActiveRecord::Base
    attr_accessible :filehash, :filename, :cloudstrgplugin_id, :user_id, :file_remote_id

    belongs_to :cloudstrgplugin, :class_name => Cloudstrg::Cloudstrgplugin

    has_many :remoteobjects, :class_name => Cloudstrg::Remoteobject, :dependent => :destroy

    belongs_to :user, :class_name => Cloudstrg.user_class
  end
end
