# webserver-nodejs
docker build -t webnode .

docker run -d --name webnode -p 5000:5000 webnode

#BROWSER NAVIGATIONS: 
#1. ipaddress:5000
#2. ipaddress:5000/mahi
#3. ipaddress:5000/admin
