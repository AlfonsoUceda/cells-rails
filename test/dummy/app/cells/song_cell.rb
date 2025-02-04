class SongCell < Cell::ViewModel
  include Escaped
  property :title

  def show
    "happy"
  end

  def with_escaped
    render
  end

  def with_title(options)
    "<h1>#{options[:with_title]}</h1>"
  end
  # include ActionView::Helpers::AssetUrlHelper
  # include Sprockets::Rails::Helper

  # self.assets_prefix = Rails.application.config.assets.prefix
  # self.assets_environment = Rails.application.assets
  # self.digest_assets = Rails.application.config.assets[:digest]
end
