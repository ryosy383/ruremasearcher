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
    clean_string
  end

  private
  def clean_string
    @titles = @titles.map do |e|
      e.text.gsub(/\n/, '').strip.gsub(/\(\d+\)\Z/, '').strip
    end
    @metadata = @metadata.map do |e|
      e.text.gsub(/\n/, '').strip
    end
    @summaries = @summaries.map do |e|
      e.text.gsub(/\n/, '').strip
    end
    @descriptions = @descriptions.map do |e|
      e.text.gsub(/\n/, '').strip
    end
  end

end
