class CreateZomekiCustomFieldItems < ActiveRecord::Migration[5.0]
  def change
    create_table :zomeki_custom_field_items do |t|
      t.belongs_to :title
      t.string     :state
      t.string     :name
      t.string     :title
      t.string     :item_type
      t.text       :item_options
      t.string     :style_attribute
      t.integer    :sort_no
      t.boolean    :target_sort
      t.boolean    :target_search
      t.boolean    :target_keyword
      t.boolean    :limited_access
      t.timestamps
    end
  end
end
