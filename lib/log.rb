class Log
  attr_reader :webpages

  def initialize(logfile_path)
    @webpages = Hash.new { |h, k| h[k] = [] }
    File.open(logfile_path).each_line do |line|
      line = line.split
      @webpages[line.first] << line.last
    end
  end
end
