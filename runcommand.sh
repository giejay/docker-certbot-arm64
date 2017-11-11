docker run   -v $1:/etc/letsencrypt   -e http_proxy=$http_proxy   -e domains="$3"   -e email="$2"   -p 80:80   -p 443:443   --rm giejay/certbot-aarch64
