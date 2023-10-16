class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':').last.strip
  end

  def log_level
    level_str = @line.split(':').first
    level_str.slice(1, level_str.length-2).downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
