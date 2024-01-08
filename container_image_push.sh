docker login -u lucien.letailleur1 -p glpat-xzCmoznsqsyuZ6WWdySz registry.gitlab.com

docker tag devops:latest registry.gitlab.com/lucien7312502/devops/devops:latest

docker push registry.gitlab.com/lucien7312502/devops/devops:latest
