## Docker Logrotate
Manages Docker container logs using logrotate. By default it does log rotation (based on size), compression and removal of old logs (based on number) every 60 minutes using the `cron` tagged branch. The `timer` or `latest` tagged branch does removal on-demand.

### Usage
In the simplest case:
```sh
docker run -rm --volume /var/lib/docker/containers:/var/lib/docker/containers:rw cgswong/docker-logrotate:timer
```
This tagged version immediately rotates the Docker container logs.

```sh
docker run -d --volume /var/lib/docker/containers:/var/lib/docker/containers:rw cgswong/docker-logrotate:cron
```
The above rotates Docker container logs every 60 minutes by default.

### Changing settings
You can use your own logrotate configuration file or schedule via volume mounting your files. For example:

```sh
docker run -d --volume /var/lib/docker/containers:/var/lib/docker/containers:rw --volume $PWD/root:/etc/crontabs/root --volume $PWD/docker.conf:/etc/logrotate.d/docker-logrotate.conf cgswong/docker-logrotate:cron
```
Would use your own host mounted logrotate configuration file and scheduled the execution the default 60 minutes.
