# Generate random nginx ltsv formart access log.

## Usage
```
$ docker build -t nginx-ltsv-log-generator .
$ docker run -d --name log-generator nginx-ltsv-log-generator
$ docker exec -it log-generator tail -f /var/log/nginx/access.log
```

### reference
- https://github.com/liubin/nginx-log-generator
- https://github.com/tamtam180/apache_log_gen
