class ZomekiCustomField::Public::Node::TitlesController < Cms::Controller::Public::Base
  def pre_dispatch
    @content = ZomekiCustomField::Content::Title.find_by(id: Page.current_node.content.id)
    return http_error(404) unless @content
  end

  def index
    @items = @content.titles
  end

end