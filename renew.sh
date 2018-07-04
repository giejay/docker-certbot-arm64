echo "stopping nginx"
cd /home/pi/dockerized
docker-compose -f /home/pi/dockerized/docker-compose.yml stop nginx
docker run \
  -v /home/pi/dockerized/nginx/certs:/etc/letsencrypt \
  -e http_proxy=$http_proxy \
  -e renew=true \
  -p 80:80 \
  -p 443:443 \
  --rm giejay/certbot-aarch64
echo "renewing"
docker-compose -f /home/pi/dockerized/docker-compose.yml up -d nginx
echo "nginx booted"

