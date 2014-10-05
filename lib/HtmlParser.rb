require 'nokogiri'

class HtmlParser
  attr_accessor :doc

  def initialize(html)
    @doc = Nokogiri::HTML::DocumentFragment.parse(html)
  end

end