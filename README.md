# Generate random nginx ltsv format access log.

## Usage
```
$ docker build -t nginx-ltsv-log-generator .
$ docker run -d --name log-generator nginx-ltsv-log-generator
$ docker exec -it log-generator tail -f /var/log/nginx/access.log
```

### on Ruby installed host
```
$ bundle install --path vendor/bundle
$ bundle exec ruby cli.rb --rate=1
```

### reference
- https://github.com/liubin/nginx-log-generator
- https://github.com/tamtam180/apache_log_gen
