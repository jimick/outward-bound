class AboutController < ApplicationController
  before_filter :set_title

  def index
  end

  def what
  end

  def international
  end

  def instructors
  end

  def support
  end

  def safety
  end

  def locations
  end

  def partners
  end

  private

  def sub_layout
    "about"
  end

  def set_title
    @title = t("about.#{params[:action]}.page_title")
  end
end
