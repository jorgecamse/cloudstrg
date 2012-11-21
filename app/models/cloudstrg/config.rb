module Cloudstrg
  class Config < ActiveRecord::Base
    attr_accessible :cloudstrgplugin_id, :user_id

    belongs_to :cloudstrgplugin, :class_name => Cloudstrg::Cloudstrgplugin

    belongs_to :user, :class_name => Cloudstrg.user_class
  end
end
