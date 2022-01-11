#/bin/sh

echo "cp -a /tmp/docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/"
cp -a /tmp//docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/

echo "ls -la /docker-entrypoint-initdb.d"
ls -la /docker-entrypoint-initdb.d
echo ""

echo "chown postgres /docker-entrypoint-initdb.d/*"
chown postgres /docker-entrypoint-initdb.d/*;

docker-entrypoint.sh "postgres"
