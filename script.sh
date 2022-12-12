docker build -t ascii-art-web:rizash .
docker run -d -p 4000:4000 --name ascii-art-web-multi ascii-art-web:rizash
docker image prune -f