docker login -u lucien.letailleur1 -p glpat-xzCmoznsqsyuZ6WWdySz registry.gitlab.com

docker pull  registry.gitlab.com/lucien7312502/devops/devops:latest

docker run -d --name conteneur -p 8080:80  registry.gitlab.com/lucien7312502/devops/devops:latest
