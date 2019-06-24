# frozen_string_literal: true

class Log
  attr_reader :webpages

  def initialize(logfile_path)
    @webpages = Hash.new { |h, k| h[k] = [] }
    parse_logfile(logfile_path)
    process_logfile
  end

  def parse_logfile(logfile_path)
    File.open(logfile_path).each_line do |line|
      line = line.split
      @webpages[line.first] << line.last
    end
  end

  def process_logfile
    @webpages = @webpages.map { |page| Webpage.new(page) }
  end
end
