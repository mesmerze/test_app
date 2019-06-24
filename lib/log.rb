class Log
  def self.call(logfile_path)
    File.open(logfile_path).each_line { |line| puts line }
  end
end
