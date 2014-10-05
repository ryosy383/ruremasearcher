# coding: utf-8

require 'mechanize'

class AutoRedirector
  attr_accessor :mechanize

  def initialize(agent)
    @mechanize = Mechanize.new { |a|
      a.user_agent_alias = agent
    }
  end

end
