class ZomekiCustomField::Content::Title < Cms::Content
  default_scope { where(model: 'ZomekiCustomField::Title') }

  has_one :public_node, -> { public_state.where(model: 'ZomekiCustomField::Title').order(:id) },
  foreign_key: :content_id, class_name: 'Cms::Node'

  has_many :settings, -> { order(:sort_no) },
    foreign_key: :content_id, class_name: 'ZomekiCustomField::Content::Setting', dependent: :destroy

  has_many :titles, foreign_key: :content_id, class_name: 'ZomekiCustomField::Title', dependent: :destroy

end