class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
  before_filter :set_mentions

  private

  def default_url_options(options = {})
    {locale: params[:locale]}
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_mentions
    @tweets = Tweet.recent
  end

  def sub_layout
    "application"
  end
end
