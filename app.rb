require './ltsv'

conf = {}
conf[:rate] = 2
conf[:filename] = "/var/log/nginx/access.log"

LogGenerator.generate(conf, MyGen.new)
