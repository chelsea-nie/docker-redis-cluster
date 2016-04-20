#!/bin/sh
set -e

# allow the container to be started with `--user`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
	chown -R redis .
        echo "#!/bin/sh" >> /command.sh
        echo "exec $@" >> /command.sh 
        chmod 755 /command.sh
	exec su redis -s /bin/sh -c "/command.sh"
fi

exec "$@"
