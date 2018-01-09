# Controller For Managing Content Settings
class ZomekiCustomField::Admin::Content::SettingsController < Cms::Admin::Content::SettingsController
  def model
    ZomekiCustomField::Content::Setting
  end
end