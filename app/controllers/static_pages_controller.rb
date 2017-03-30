class StaticPagesController < ApplicationController
  def home
    @search = Search.new
  end
end
