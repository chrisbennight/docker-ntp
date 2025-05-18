tagname=ghcr.io/chrisbennight/docker-ntp:$(date +%Y%m%d.%H%M%S)
taglatest=ghcr.io/chrisbennight/docker-ntp:latest
NTP_SERVERS="time.cloudflare.com"
sudo docker build . --file ./Dockerfile  -t $tagname -t $taglatest 
sudo docker login ghcr.io --username chrisbennight --password-stdin < ~/.github-docker-token
sudo docker push -a ghcr.io/chrisbennight/docker-ntp
sudo docker rmi $taglatest
