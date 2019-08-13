require 'apache-loggen/base'

class MyGen < LogGenerator::Apache
  def format(record, config)
    log_string = [
      "host:#{record['host']}",
      "user:#{record['user']}",
      "time:#{Time.now.strftime('%d/%b/%Y:%H:%M:%S %z')}",
      "method:#{record['method']}",
      "uri:#{record['path']}",
      "protocol:HTTP/1.1",
      "status:#{record['code']}",
      "size:#{record['size']}",
      "referer:#{record['referer']}",
      "ua:#{record['agent']}",
    ].join("\t")

    return %[#{log_string}\n]
  end
end
