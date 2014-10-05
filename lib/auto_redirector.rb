# coding: utf-8

require 'mechanize'

class AutoRedirector
  attr_accessor :agent

  def initialize(agent)
    self.set_agent(agent)
  end

  def set_agent(agent)
    @agent = Mechanize.new do |a|
      a.user_agent_alias = agent
    end
  end

  def get(url)
    @agent.get(url)
  end

  def search(words)
    form = @agent.page.forms[0]
    form.fields[0].value = words
    form.submit
  end

end
