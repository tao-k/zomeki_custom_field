class ZomekiCustomField::Title < ApplicationRecord
  include Sys::Model::Base
  include Sys::Model::Base::Config
  include Sys::Model::Auth::Manager
  include StateText

  # Content
  belongs_to :content, :foreign_key => :content_id, :class_name => 'ZomekiCustomField::Content::Title'
  validates :content_id, :presence => true



end
