docker-compose down
docker-compose -f docker-compose.http.yml up -d nginx
docker-compose -f docker-compose.http.yml run --rm certbot certonly --webroot --webroot-path=/usr/share/nginx/html --email hq@kantacky.com --agree-tos -d www.kantacky.com -d jupyter.kantacky.com -d www.chatlab.space -d www.nanosuke.net
docker-compose -f docker-compose.http.yml down
docker-compose up -d
docker-compose logs -f
