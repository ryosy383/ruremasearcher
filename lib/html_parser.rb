# coding: utf-8

require 'nokogiri'

class HtmlParser
  attr_accessor :doc, :titles, :metadata, :summaries, :descriptions

  def initialize(html)
    @doc = Nokogiri::HTML.parse(html)
  end

  def parse
    @titles = @doc.css('dt > h3')
    @metadata =  @doc.css('ul.entry-metadata > li.entry-type > span')
    @summaries = @doc.css('div.entry-summary > p')
    @descriptions = @doc.css('div.entry-document > div.entry-snippets > div.snippet')
  end

end
