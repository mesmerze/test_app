# frozen_string_literal: true

module Printer
  def self.views(webpages)
    puts 'Views: '
    webpages
      .sort_by(&:views)
      .reverse_each { |page| puts "#{page.route} #{page.views} views" }
    puts '~~~~~~'
  end

  def self.visits(webpages)
    puts 'Visits: '
    webpages
      .sort_by(&:visits)
      .reverse_each { |page| puts "#{page.route} #{page.visits} visits" }
    puts '~~~~~~'
  end
end
