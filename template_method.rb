class Report
  #main skelton defind in abstract class - inhretance
  def initialize
    @text = ['My name', 'is', 'Majid']
  end

  def output_report
    output_start
    output_body
    output_end
  end

  def output_body
    @text.each do |line|
     output_line(line) 
    end
  end

  def output_start
    raise 'Called abstract method: (output line)'
  end

  def output_end
    raise 'Called abstract method: (output line)'
  end

  def output_line line
    raise 'Called abstract method: (output line)'
  end
end

class HtmlReport < Report
  def output_start
    puts '<html>'
  end

  def output_line line
    puts line
  end

  def output_end
    puts '</html>'
  end
end

class PlainTextReport < Report
  def output_start
  end

  def output_line line
    puts line
  end

  def output_end
  end
end

HtmlReport.new.output_report
# PlainTextReport.new.output_report
