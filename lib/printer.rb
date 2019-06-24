# frozen_string_literal: true

module Printer
  def self.views(webpages)
    puts 'Views: '
    webpages
      .transform_values(&:size)
      .sort_by(&:last)
      .reverse_each { |item| puts "#{item[0]} #{item[1]} views" }
    puts '~~~~~~'
  end

  def self.visits(webpages)
    puts 'Visits: '
    webpages
      .transform_values(&:uniq)
      .transform_values(&:size)
      .sort_by(&:last)
      .reverse_each { |item| puts "#{item[0]} #{item[1]} visits" }
    puts '~~~~~~'
  end
end
