# frozen_string_literal: true

class Webpage
  attr_reader :route, :ips

  def initialize(page)
    @route = page.first
    @ips = page.last
  end

  def views
    @ips.size
  end

  def visits
    @ips.uniq.size
  end
end
