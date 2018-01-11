# Controller For Managing Content Data

class CustomField::Admin::Content::BaseController < Cms::Admin::Content::BaseController
  layout  'admin/cms'
  def model
    CustomField::Content::Title
  end
end