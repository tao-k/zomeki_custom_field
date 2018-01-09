# Controller For Managing Content Data

class ZomekiCustomField::Admin::Content::BaseController < Cms::Admin::Node::BaseController
  layout  'admin/cms'
  def model
    ZomekiCustomField::Content::Title
  end
end