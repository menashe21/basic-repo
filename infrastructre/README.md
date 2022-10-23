<!-- Initial jenkins system -->
<!-- jenkins systemup  -->
docker-compose -f jenkins/docker-compose.yaml up -d
<!-- browes to jenkins web site -->
http://localhost:8080/
<!-- copy default administrator password  -->
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

ssh-keygen -t rsa -f jenkins_agent

