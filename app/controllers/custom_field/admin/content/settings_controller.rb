# Controller For Managing Content Settings
class CustomField::Admin::Content::SettingsController < Cms::Admin::Content::SettingsController
  def model
    CustomField::Content::Setting
  end
end